# ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routingNumberType** | **String** | The type of routing number; one of CPA, ABA, or IFSC. Null for an identifier-only account, such as an Interac e-Transfer email or phone number. | 
**routingNumber** | **String** | The routing number. Null for an identifier-only account, such as an Interac e-Transfer email or phone number. | 
**paymentRail** | **String** | The payment rail this routing entry is configured for; one of EFT, ACH, RTP, FEDNOW, WIRE, SPEI, PIX, COELSA, PSE, ETRANSFER, IFSC, UPI, SBP, BEFTN, NGBANK, LBTR, SEPA, EASY_PAISA, FINJA, JAZZ_CASH, NAYA_PAY, SADA_PAY, KEBANK, HKBANK, MPESA, CNBANK, FPS, ALIPAY, or UNSPECIFIED. Null for accounts that did not specify a rail. | [optional] 
**accountDesignation** | **String** | Account designation for India IFSC and UPI accounts; one of NRE or NRO. Null for non-India accounts. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


