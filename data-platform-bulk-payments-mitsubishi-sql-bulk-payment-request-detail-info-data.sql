CREATE TABLE `data_platform_bulk_payments_mitsubishi_bulk_payment_request_detail_info_data`
(
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
  `PayerPaymentRequisitionID`            int(6) NOT NULL,
  `PayerPaymentRequisitionItem`          int(6) NOT NULL,
  `Payee`                                int(12) NOT NULL,
  `receivingBankNo`                      varchar(4) NOT NULL,
  `receivingBankName`                    varchar(15) NOT NULL,
  `receivingBranchNo`                    varchar(3) NOT NULL,
  `receivingBranchName`                  varchar(15) NOT NULL,
  `clearingHouseNo`                      varchar(4) DEFAULT NULL,
  `receivingDepositType`                 varchar(1) NOT NULL,
  `receivingAccountNo`                   varchar(7) NOT NULL,
  `receivingBeneficiaryName`             varchar(30) NOT NULL,
  `paymentAmount`                        int(10) NOT NULL,
  `newAmendCode`                         varchar(1) DEFAULT NULL,
  `customerCode1`                        varchar(10) DEFAULT NULL,
  `customerCode2`                        varchar(10) DEFAULT NULL,
  `paymentApplicantNo`                   varchar(10) DEFAULT NULL,
  `ediInformation`                       varchar(20) DEFAULT NULL,
  `paymentType`                          varchar(1) NOT NULL,

    PRIMARY KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`, `PayerPaymentRequisitionItem`),

    CONSTRAINT `DataPlatformBulkPaymentsMitsubishiBulkPaymentRequestDetailInfoData01_fk` FOREIGN KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`, `PayerPaymentRequisitionItem`) REFERENCES `data_platform_payment_requisition_item_data` (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`, `PayerPaymentRequisitionItem`),
    CONSTRAINT `DataPlatformBulkPaymentsMitsubishiBulkPaymentRequestDetailInfoData02_fk` FOREIGN KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`) REFERENCES `data_platform_bulk_payments_mitsubishi_bulk_payment_request_info_data` (`FinInstCountry`, `FinInstNumber`, `InternalFinInstCustomerID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
