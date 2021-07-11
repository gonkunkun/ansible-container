# ansible実行用コンテナ

- softwaredesign7月号を参考に、Ansible環境構築済のコンテナを作成
- Dockerfileとdocker-compose.yamlを作成
- 諸々の作業用のディレクトリは未作成

## 初期構築

```
docker build -t sasaki/ansible:latest .
docker-compose up -d
```