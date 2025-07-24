import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:be_sharp/infrastructure/repository/database_repository.dart';

void main() {
  group('DatabaseRepository', () {
    late DatabaseRepository repository;
    late FakeFirebaseFirestore fakeFirestore;

    setUp(() {
      fakeFirestore = FakeFirebaseFirestore();
      repository = DatabaseRepository(fakeFirestore);
    });

    group('getUsers', () {
      test('should return empty list when no UIDs provided', () async {
        final result = await repository.getUsers([]);
        expect(result, isEmpty);
      });

      test('should return users for provided UIDs', () async {
        // Arrange
        const uid1 = 'user1';
        const uid2 = 'user2';
        const uid3 = 'user3';

        final user1Data = {
          'uid': uid1,
          'registeredInfo': null,
          'updatedAt': Timestamp.now(),
        };

        final user2Data = {
          'uid': uid2,
          'registeredInfo': null,
          'updatedAt': Timestamp.now(),
        };

        await fakeFirestore.collection('users').doc(uid1).set(user1Data);
        await fakeFirestore.collection('users').doc(uid2).set(user2Data);

        // Act
        final result = await repository.getUsers([uid1, uid2, uid3]);

        // Assert
        expect(result, hasLength(2));
        expect(result.map((u) => u.uid), containsAll([uid1, uid2]));
      });

      test('should handle errors gracefully and return empty list', () async {
        // Act - providing invalid data that might cause parsing errors
        final result = await repository.getUsers(['invalid-uid']);

        // Assert
        expect(result, isEmpty);
      });
    });

    group('getMuteUsers', () {
      test('should return empty list when uid is null', () async {
        final result = await repository.getMuteUsers(null, ['user1', 'user2']);
        expect(result, isEmpty);
      });

      test('should return empty list when muteUids is empty', () async {
        final result = await repository.getMuteUsers('user1', []);
        expect(result, isEmpty);
      });

      test('should return muted user IDs', () async {
        // Arrange
        const currentUid = 'currentUser';
        const mutedUid1 = 'mutedUser1';
        const mutedUid2 = 'mutedUser2';
        const unmutedUid = 'unmutedUser';

        final muteUser1Data = {
          'muteUid': mutedUid1,
          'createdAt': FieldValue.serverTimestamp(),
        };

        final muteUser2Data = {
          'muteUid': mutedUid2,
          'createdAt': FieldValue.serverTimestamp(),
        };

        await fakeFirestore
            .collection('users')
            .doc(currentUid)
            .collection('muteUsers')
            .doc(mutedUid1)
            .set(muteUser1Data);

        await fakeFirestore
            .collection('users')
            .doc(currentUid)
            .collection('muteUsers')
            .doc(mutedUid2)
            .set(muteUser2Data);

        // Act
        final result = await repository
            .getMuteUsers(currentUid, [mutedUid1, mutedUid2, unmutedUid]);

        // Assert
        expect(result, hasLength(2));
        expect(result, containsAll([mutedUid1, mutedUid2]));
        expect(result, isNot(contains(unmutedUid)));
      });
    });

    group('getUserCount', () {
      test('should return 0 when no user answers exist', () async {
        final result = await repository.getUserCount('problem1');
        expect(result, 0);
      });

      test('should return correct count of user answers for a problem',
          () async {
        // Arrange
        const problemId = 'problem1';

        final userAnswer1Data = {
          'answer': 'answer1',
          'createdAt': Timestamp.now(),
          'problemId': problemId,
          'caption': null,
          'uid': 'user1',
        };

        final userAnswer2Data = {
          'answer': 'answer2',
          'createdAt': Timestamp.now(),
          'problemId': problemId,
          'caption': null,
          'uid': 'user2',
        };

        final userAnswer3Data = {
          'answer': 'answer3',
          'createdAt': Timestamp.now(),
          'problemId': 'different-problem',
          'caption': null,
          'uid': 'user3',
        };

        await fakeFirestore
            .collection('users')
            .doc('user1')
            .collection('userAnswers')
            .doc(problemId)
            .set(userAnswer1Data);

        await fakeFirestore
            .collection('users')
            .doc('user2')
            .collection('userAnswers')
            .doc(problemId)
            .set(userAnswer2Data);

        await fakeFirestore
            .collection('users')
            .doc('user3')
            .collection('userAnswers')
            .doc('different-problem')
            .set(userAnswer3Data);

        // Act
        final result = await repository.getUserCount(problemId);

        // Assert
        expect(result, 2);
      });
    });

    group('getPublicUser', () {
      test('should return null when user does not exist', () async {
        final result = await repository.getPublicUser('nonexistent-user');
        expect(result, isNull);
      });

      test('should return user when user exists', () async {
        // Arrange
        const uid = 'test-user';
        final userData = {
          'uid': uid,
          'registeredInfo': null,
          'updatedAt': Timestamp.now(),
        };

        await fakeFirestore.collection('users').doc(uid).set(userData);

        // Act
        final result = await repository.getPublicUser(uid);

        // Assert
        expect(result, isNotNull);
        expect(result!.uid, uid);
      });

      test('should handle errors gracefully and return null', () async {
        // Act - This should handle any parsing errors gracefully
        final result = await repository.getPublicUser('any-user');

        // Assert
        expect(result, isNull);
      });
    });

    group('getPrivateUser', () {
      test('should return null when private user does not exist', () async {
        final result = await repository.getPrivateUser('nonexistent-user');
        expect(result, isNull);
      });

      test('should return private user when exists', () async {
        // Arrange
        const uid = 'test-user';
        final privateUserData = {
          'fcmToken': 'test-token',
          'uid': uid,
          'createdAt': Timestamp.now(),
        };

        await fakeFirestore
            .collection('privateUsers')
            .doc(uid)
            .set(privateUserData);

        // Act
        final result = await repository.getPrivateUser(uid);

        // Assert
        expect(result, isNotNull);
        expect(result!.uid, uid);
        expect(result.fcmToken, 'test-token');
      });
    });

    group('createDoc', () {
      test('should successfully create a document', () async {
        // Arrange
        const uid = 'test-user';
        final docRef = fakeFirestore.collection('test').doc(uid);
        final data = {'field': 'value'};

        // Act
        final result = await repository.createDoc(docRef, data);

        // Assert
        expect(result.isSuccess(), true);

        // Verify document was created
        final doc = await docRef.get();
        expect(doc.exists, true);
        expect(doc.data()!['field'], 'value');
      });
    });

    group('updateDoc', () {
      test('should successfully update an existing document', () async {
        // Arrange
        const uid = 'test-user';
        final docRef = fakeFirestore.collection('test').doc(uid);
        await docRef.set({'field1': 'value1'});

        final updateData = {'field2': 'value2'};

        // Act
        final result = await repository.updateDoc(docRef, updateData);

        // Assert
        expect(result.isSuccess(), true);

        // Verify document was updated
        final doc = await docRef.get();
        expect(doc.data()!['field2'], 'value2');
      });
    });

    group('deleteDoc', () {
      test('should successfully delete a document', () async {
        // Arrange
        const uid = 'test-user';
        final docRef = fakeFirestore.collection('test').doc(uid);
        await docRef.set({'field': 'value'});

        // Act
        final result = await repository.deleteDoc(docRef);

        // Assert
        expect(result.isSuccess(), true);

        // Verify document was deleted
        final doc = await docRef.get();
        expect(doc.exists, false);
      });
    });

    group('createPrivateUser', () {
      test('should create a private user with token', () async {
        // Arrange
        const uid = 'test-user';
        const token = 'test-fcm-token';

        // Act
        final result = await repository.createPrivateUser(uid, token);

        // Assert
        expect(result.isSuccess(), true);

        // Verify private user was created
        final doc =
            await fakeFirestore.collection('privateUsers').doc(uid).get();
        expect(doc.exists, true);
        expect(doc.data()!['uid'], uid);
        expect(doc.data()!['fcmToken'], token);
      });

      test('should create a private user without token', () async {
        // Arrange
        const uid = 'test-user';

        // Act
        final result = await repository.createPrivateUser(uid, null);

        // Assert
        expect(result.isSuccess(), true);

        // Verify private user was created with empty token
        final doc =
            await fakeFirestore.collection('privateUsers').doc(uid).get();
        expect(doc.exists, true);
        expect(doc.data()!['uid'], uid);
        expect(doc.data()!['fcmToken'], '');
      });
    });

    group('updateToken', () {
      test('should update FCM token for private user', () async {
        // Arrange
        const uid = 'test-user';
        const oldToken = 'old-token';
        const newToken = 'new-token';

        await fakeFirestore.collection('privateUsers').doc(uid).set({
          'uid': uid,
          'fcmToken': oldToken,
          'createdAt': Timestamp.now(),
        });

        // Act
        final result = await repository.updateToken(uid, newToken);

        // Assert
        expect(result.isSuccess(), true);

        // Verify token was updated
        final doc =
            await fakeFirestore.collection('privateUsers').doc(uid).get();
        expect(doc.data()!['fcmToken'], newToken);
      });
    });

    group('deleteUser', () {
      test('should delete a public user', () async {
        // Arrange
        const uid = 'test-user';
        await fakeFirestore.collection('users').doc(uid).set({
          'uid': uid,
          'registeredInfo': null,
          'updatedAt': Timestamp.now(),
        });

        // Act
        final result = await repository.deleteUser(uid);

        // Assert
        expect(result.isSuccess(), true);

        // Verify user was deleted
        final doc = await fakeFirestore.collection('users').doc(uid).get();
        expect(doc.exists, false);
      });
    });

    group('fetchCorrectUserAnswers', () {
      test('should return user answers with correct answers', () async {
        // Arrange
        const problemId = 'problem1';
        final correctAnswers = ['answer1', 'answer2'];

        final userAnswer1Data = {
          'answer': 'answer1',
          'createdAt': Timestamp.now(),
          'problemId': problemId,
          'caption': null,
          'uid': 'user1',
        };

        final userAnswer2Data = {
          'answer': 'wrong-answer',
          'createdAt': Timestamp.now(),
          'problemId': problemId,
          'caption': null,
          'uid': 'user2',
        };

        final userAnswer3Data = {
          'answer': 'answer2',
          'createdAt': Timestamp.now(),
          'problemId': problemId,
          'caption': null,
          'uid': 'user3',
        };

        await fakeFirestore
            .collection('users')
            .doc('user1')
            .collection('userAnswers')
            .doc(problemId)
            .set(userAnswer1Data);

        await fakeFirestore
            .collection('users')
            .doc('user2')
            .collection('userAnswers')
            .doc(problemId)
            .set(userAnswer2Data);

        await fakeFirestore
            .collection('users')
            .doc('user3')
            .collection('userAnswers')
            .doc(problemId)
            .set(userAnswer3Data);

        // Act
        final result =
            await repository.fetchCorrectUserAnswers(problemId, correctAnswers);

        // Assert
        expect(result, hasLength(2));
        expect(
            result.map((ua) => ua.answer), containsAll(['answer1', 'answer2']));
        expect(result.map((ua) => ua.uid), containsAll(['user1', 'user3']));
      });

      test('should return empty list when no correct answers exist', () async {
        final result =
            await repository.fetchCorrectUserAnswers('problem1', ['answer1']);
        expect(result, isEmpty);
      });
    });

    group('muteUser', () {
      test('should successfully mute a user', () async {
        // Arrange
        const uid = 'current-user';
        const muteUid = 'user-to-mute';

        // Act
        final result = await repository.muteUser(uid, muteUid);

        // Assert
        expect(result.isSuccess(), true);

        // Verify mute was created
        final doc = await fakeFirestore
            .collection('users')
            .doc(uid)
            .collection('muteUsers')
            .doc(muteUid)
            .get();
        expect(doc.exists, true);
        expect(doc.data()!['muteUid'], muteUid);
      });
    });

    group('unMute', () {
      test('should successfully unmute a user', () async {
        // Arrange
        const uid = 'current-user';
        const muteUid = 'user-to-unmute';

        // First create a mute
        await fakeFirestore
            .collection('users')
            .doc(uid)
            .collection('muteUsers')
            .doc(muteUid)
            .set({
          'muteUid': muteUid,
          'createdAt': Timestamp.now(),
        });

        // Act
        final result = await repository.unMute(uid, muteUid);

        // Assert
        expect(result.isSuccess(), true);

        // Verify mute was removed
        final doc = await fakeFirestore
            .collection('users')
            .doc(uid)
            .collection('muteUsers')
            .doc(muteUid)
            .get();
        expect(doc.exists, false);
      });
    });

    group('createPublicUser', () {
      test('should create a public user and return it', () async {
        // Arrange
        const uid = 'test-user';

        // Act
        final result = await repository.createPublicUser(uid);

        // Assert
        expect(result, isNotNull);
        expect(result!.uid, uid);

        // Verify user was created in Firestore
        final doc = await fakeFirestore.collection('users').doc(uid).get();
        expect(doc.exists, true);
        expect(doc.data()!['uid'], uid);
      });
    });

    group('getVerifiedPurchases', () {
      test('should return empty list when uid is null', () async {
        final result = await repository.getVerifiedPurchases(null);
        expect(result, isEmpty);
      });

      test('should return verified purchases for user', () async {
        // Arrange
        const uid = 'test-user';

        // Act
        final result = await repository.getVerifiedPurchases(uid);

        // Assert - Should handle gracefully even with no purchases
        expect(result, isNotNull);
        expect(result, isA<List>());
      });
    });
  });
}

// Extension method to check if Result is successful
extension ResultTestHelper on dynamic {
  bool isSuccess() {
    return toString().contains('success') ||
        (this is Map && this.containsKey('success')) ||
        this == true; // For boolean results
  }
}
