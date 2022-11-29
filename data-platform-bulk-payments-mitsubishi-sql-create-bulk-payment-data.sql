CREATE TABLE `data_platform_bulk_payments_mitsubishi_create_bulk_payment_data`
(
  `paymentDataName`                              varchar(60) NOT NULL,
  `codeOnlyFlag`                                 varchar(1) NOT NULL,
  `chargesPaidBy`                                varchar(1) DEFAULT NULL,

  PRIMARY KEY (`paymentDataName`, `codeOnlyFlag`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
