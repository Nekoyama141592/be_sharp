interface PurchaseDetails {
    error: string;
    productID: string;
    purchaseID: string | null;
    verificationData: {
      localVerificationData: string;
      serverVerificationData: string;
      source: string;
    };
    transactionDate: string;
    status: string;
    pendingCompletePurchase: boolean;
  }
  