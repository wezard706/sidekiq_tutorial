# ベースイメージの指定
FROM ruby:3.2.2

# 作業ディレクトリの指定
WORKDIR /app

# GemfileとGemfile.lockをコピーし、依存関係をインストール
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# プロジェクトのファイルをコピー
COPY . .

# ポートのエクスポート
EXPOSE 3000

# コンテナ起動時に実行するコマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
