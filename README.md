# data-platform-bulk-payments-mitsubishi-sql 

data-platform-bulk-payments-mitsubishi-sql は、データ連携基盤において、三菱UFJ銀行の総合振込データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-bulk-payments-mitsubishi-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-bulk-payments-mitsubishi-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-bulk-payments-mitsubishi-sql-bulk-payment-request-info-data.sql（データ連携基盤 総合振込 三菱UFJ銀行 - 総合振込申請情報データ）
* data-platform-bulk-payments-mitsubishi-sql-bulk-payment-request-detail-info-data.sql（データ連携基盤 総合振込 三菱UFJ銀行 - 総合振込申請詳細情報データ）
* data-platform-bulk-payments-mitsubishi-sql-create-bulk-payment-data.sql（データ連携基盤 総合振込 三菱UFJ銀行 - 総合振込登録データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
