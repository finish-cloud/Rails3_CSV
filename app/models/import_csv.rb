class ImportCsv < ApplicationRecord
  # CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.import(path)
    # CSVファイルからインポートするデータを取得し配列に格納
    CSV.foreach(path, headers: true) do |row|
      User.create(
          name: row["name"],
          age: row["age"],
          address: row["address"]
      )
    end
  end
end

