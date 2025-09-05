# JSONBin.io セットアップ手順

## 1. アカウント作成
1. https://jsonbin.io にアクセス
2. 「Sign Up」で無料アカウント作成（月10,000リクエストまで無料）
3. メール認証を完了

## 2. APIキー取得
1. Dashboard → API Keys
2. 「Generate Access Key」でキーを生成
3. キーをコピー（例: $2a$10$abc123...）

## 3. Bin作成
1. Dashboard → Create Bin
2. 名前: `clinic-data`
3. 初期データ: `{}`
4. 作成後のBin IDをコピー（例: 676001a8ad19ca34f8c8b4c8）

## 4. ファイルの設定値を更新

`beauty-clinic-multiuser.html` の以下の行を実際の値に置き換える：

```javascript
// 現在（ダミー値）
this.binId = '676001a8ad19ca34f8c8b4c8'; // ← 実際のBin IDに置き換え
this.apiKey = '$2a$10$example...'; // ← 実際のAPIキーに置き換え

// 置き換え例
this.binId = 'あなたのBin ID';
this.apiKey = 'あなたのAPIキー';
```

## 5. テスト手順
1. Netlifyで更新されたファイルを再デプロイ
2. PC側で予約を追加
3. iPad側でページをリロードして予約が表示されることを確認
4. 5秒以内に自動同期されることを確認

## 注意事項
- APIキーは他人に見せないでください
- 無料プランは月10,000リクエストまで（1日約330リクエスト）
- 同期間隔が短いほどリクエスト数が増加