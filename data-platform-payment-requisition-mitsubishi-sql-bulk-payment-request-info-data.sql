CREATE TABLE `data_platform_payment_requisition_mitsubishi_bulk_payment_request_info_data`
(
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
  `PayerPaymentRequisitionID`            int(6) NOT NULL,
  `transactionCode`                      varchar(2) NOT NULL,
  `paymentApplicantCode`                 varchar(10) NOT NULL,
  `paymentApplicantName`                 varchar(40) NOT NULL,
  `paymentDate`                          varchar(10) NOT NULL,
  `payingBankNo`                         varchar(4) NOT NULL,
  `payingBankName`                       varchar(15) NOT NULL,
  `payingBranchNo`                       varchar(3) NOT NULL,
  `payingBranchName`                     varchar(15) NOT NULL,
  `payingDepositType`                    varchar(1) NOT NULL,
  `payingAccountNo`                      varchar(7) NOT NULL,
  `totalNumber`                          int(6) NOT NULL,
  `totalAmount`                          int(12) NOT NULL,

    PRIMARY KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`),

    CONSTRAINT `DataPlatformPaymentRequisitionMitsubishiBulkPaymentRequestInfoData_fk` FOREIGN KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_header_data` (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
