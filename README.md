# このレポジトリについて

## 目的

Kaggleなどの現実的な業務データを入力とし、
それを企業向けの分析基盤として再構築する。

本プロジェクトの目的は単なるデータ分析ではなく、以下を証明することである。

1. messy dataからbusiness-ready data modelへ変換できる能力
2. dimensional modelingによるDWH設計能力
3. semantic consistency(KPI整合性)の実現能力
4. data lineageおよびauditabilityの実装能力
5. cloud-native infrastructureの構築能力


## スコープ


## スコープ外

## 対象とするデータセット

(仮)

[Smart Manufacturing IoT-Cloud Monitoring Dataset](https://www.kaggle.com/datasets/ziya07/smart-manufacturing-iot-cloud-monitoring-dataset)



## 環境構築

```
docker compose up -d
```

```
docker compose exec db /app/scripts/load.sh
```
