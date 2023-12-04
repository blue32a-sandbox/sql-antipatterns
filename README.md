# SQLアンチパターン

https://www.oreilly.co.jp/books/9784873115894/

## アンチパターン

- [ジェイウォーク（信号無視）](./antipatterns/01_Jaywalking/anti/create.sql)
- [ナイーブツリー（素朴な木）](./antipatterns/02_Trees/anti/adjacency-list.sql)
- [IDリクワイアド（とりあえずID）](./antipatterns/03_ID-Required/anti/id-ubiquitous.sql)
- [キーレスエントリ（外部キー嫌い）](./antipatterns/04_Keyless-Entry/anti/)
- [EAV（エンティティ・アトリビュート・バリュー）](./antipatterns/05_EAV/anti/create-eav-table.sql)
- [ポリモーフィック関連](./antipatterns/06_Polymorphic/anti/)
- [マルチカラムアトリビュート（複数列属性）](./antipatterns/07_Multi-Column/anti/create-table.sql)
- [メタデータトリブル（メタデータ大増殖）](./antipatterns/08_Metadata-Tribbles/anti/create-tables.sql)
- [ラウンディングエラー（丸め誤差）](./antipatterns/09_Rounding-Errors/anti/)
- [サーティワンフレーバー（３１のフレーバー）](./antipatterns/10_31-Flavors/anti/)
- [ファントムファイル（幻のファイル）](./antipatterns/11_Phantom-Files/anti/create-screenshots-path.sql)
- [インデックスショットガン（闇雲インデックス）](./antipatterns/12_Index-Shotgun/anti/)
- [フィア・オブ・ジ・アンノウン（恐怖のunknown）](./antipatterns/13_Fear-Unknown/anti/)
- [アンビギュアスグループ（曖昧なグループ）](./antipatterns/14_Groups/anti/)
- [ランダムセクション](./antipatterns/15_Random/anti/)

## ローカル環境

```
docker compose up
```

phpMyAdmin: http://localhost:8080/
