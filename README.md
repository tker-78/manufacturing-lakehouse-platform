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

[Smart Manufacturing IoT-Cloud Monitoring Dataset](https://www.kaggle.com/datasets/ziya07/smart-manufacturing-iot-cloud-monitoring-dataset)

## データモデリング

このデータセットでは、下記のカラムを持つ。

```
timestamp TEXT,
machine_id TEXT,
temperature TEXT,
vibration TEXT,
humidity TEXT,
pressure TEXT,
energy_consumption TEXT,
machine_status TEXT,
anomaly_flag TEXT,
predicted_remaining_life TEXT,
failure_type TEXT,
downtime_risk TEXT,
maintenance_required TEXT
```

ここからgrainを抽出して再モデリングを行う。

まず、このデータセットの問題は、
- すべてのカラムがtimestampと紐付いている
- 実測データとML用の判定データが混在している

### Staging層

まずはステージング層で実測データとML用のデータを分離する。

### Intermediate層

Intermediate層では、ビジネスロジックに基づくマッピングを行う。

(e.g. 生産実績とシフトの紐付け)

### Marts層

Marts層では



### 将来的な展開

- ドメイン特化のsemantic layerを構築
- data sourceとsemantic layerのマッピングのツールを開発
- mappingだけを行えば、基本のBIダッシュボードが構築されるようにしたい。

#### phase1

このレポジトリの範囲。
source codeからdimensional modelingを実施。

#### phase2

このレポジトリの範囲。
dbtを適用してlineageを作る。

#### phase3

mappingの定義を行う。
このphaseではyamlで。

#### phase4

ノーコードmappingツールを作る。
オープンソースを利用する。





## 環境構築

```
docker compose up -d
```

```
docker compose exec db /app/scripts/load.sh
```

```
docker compose run --rm dbt dbt init
```

```
docker compose run --rm dbt dbt debug
```
