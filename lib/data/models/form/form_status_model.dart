enum AuthStatus { pure, authenticated, unauthenticated, registered }

enum FormStatus {
  pure,
  loading,
  success,
  failure,

  ///------------------------------ Discount ------------------------------------
  //GET PROFILE
  getDiscountInProgress,
  getDiscountInSuccess,
  getDiscountInFailure,

  ///------------------------------ Profile ------------------------------------
  //GET PROFILE
  gettingProfileInProgress,
  gettingProfileInSuccess,
  gettingProfileInFailure,

  //UPDATE PROFILE
  updateProfileInProgress,
  updateProfileInSuccess,
  updateProfileInFailure,

  ///------------------------------ Orders -------------------------------------
  //CREATE ADDRESS
  creatingOrderInProgress,
  creatingOrderInSuccess,
  creatingOrderInFailure,

  //GET ORDERS
  gettingOrdersInProgress,
  gettingOrdersInSuccess,
  gettingOrdersInFailure,

  //DELETE ORDERS
  deletingOrdersInProgress,
  deletingOrdersInSuccess,
  deletingOrdersInFailure,

  ///------------------------- CATEGORY PRODUCTS -------------------------------
  //GET CATEGORY PRODUCTS
  getCategoryProductsInProgress,
  getCategoryProductsInSuccess,
  getCategoryProductsInFailure,

  ///----------------------------- AUTH ----------------------------------------
  //CLIENT REGISTER
  registerClientInProgress,
  registerClientInSuccess,
  registerClientInFailure,

  //CLIENT LOGIN
  loginClientInProgress,
  loginClientInSuccess,
  loginClientInFailure,

  ///-----------------------------  ADDRESS  -----------------------------------
  //CREATE ADDRESS
  creatingAddressInProgress,
  creatingAddressInSuccess,
  creatingAddressInFailure,

  //GET ADDRESS
  gettingAddressInProgress,
  gettingAddressInSuccess,
  gettingAddressInFailure,

  //DELETE ADDRESS
  deletingAddressInProgress,
  deletingAddressInSuccess,
  deletingAddressInFailure,

  //UPDATE ADDRESS
  updateAddressInProgress,
  updateAddressInSuccess,
  updateAddressInFailure,

  ///--------------------------- SELECT  ADDRESS -------------------------------
  //GET SELECT ADDRESS
  gettingSelectAddressInProgress,
  gettingSelectAddressInSuccess,
  gettingSelectAddressInFailure,

  ///------------------------------ SEND PAY -----------------------------------
  //SEND PAY
  sendPayInProgress,
  sendPayCashInSuccess,
  sendPayOnlineInSuccess,
  sendPayInFailure,
}
