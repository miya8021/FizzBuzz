# class NameIndex
#   #ハッシュにキーとバリューを設定。%W[配列]
#   NAME_INDEX_HASH = {
#     'ア' => %w[ア イ ウ エ オ ヴ],
#     'カ' => %w[カ キ ク ケ コ ガ ギ グ ゲ ゴ],
#     'サ' => %w[サ シ ス セ ソ ザ ジ ズ ゼ ゾ],
#     'タ' => %w[タ チ ツ テ ト ダ ヂ ヅ デ ド],
#     'ナ' => %w[ナ ニ ヌ ネ ノ],
#     'ハ' => %w[ハ ヒ フ ヘ ホ バ ビ ブ ベ ボ パ ピ プ ペ ポ],
#     'マ' => %w[マ ミ ム メ モ],
#     'ヤ' => %w[ヤ ユ ヨ],
#     'ラ' => %w[ラ リ ル レ ロ],
#     'ワ' => %w[ワ ヲ ン]
#   }.freeze #オブジェクトの変更を禁止

#   def self.create_index(names)
#     #sort並び替えし、group_byでキーと対応する要素の配列を値とするハッシュを返す
#     names.sort.group_by {|name|
#       NAME_INDEX_HASH.find(['Others']) {|_, value| value.include?(name[0])}.first
#     }.to_a
#   end
# end


# names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']

# p NameIndex.create_index(names)

#他の解答
# class NameIndex
#     INDEX = {
#     #カタカナを配列オブジェクトにしている
#     'ア': ('ア'..'オ').to_a << 'ヴ',
#     'カ': ('カ'..'ゴ').to_a,
#     'サ': ('サ'..'ゾ').to_a,
#     'タ': ('タ'..'ド').to_a,
#     'ナ': ('ナ'..'ノ').to_a,
#     'ハ': ('ハ'..'ボ').to_a,
#     'マ': ('マ'..'モ').to_a,
#     'ヤ': ('ヤ'..'ヨ').to_a,
#     'ラ': ('ラ'..'ロ').to_a,
#     'ワ': ('ワ'..'ン').to_a
#   }.freeze

#   def self.create_index(names)
#     # names.sort.group_by(&:chr).to_a #chrメソッド/to_aでselfを返す
#     return [] if names.empty? #文字列が空の時trueを返す

#     INDEX.map do |key, value|
#       #selectでグループ化
#       index_names = names.select { |name| value.include?(name.chr) }.sort
#       [key.to_s, index_names] unless index_names.empty?
#     end.compact #自身から nil を取り除いた配列を生成して返す
#   end
# end

class NameIndex
  SYLLABARIES = [
    ('ア'..'オ').to_a << 'ヴ',
    ('カ'..'ゴ').to_a,
    ('サ'..'ゾ').to_a,
    ('タ'..'ド').to_a,
    ('ナ'..'ノ').to_a,
    ('ハ'..'ボ').to_a,
    ('マ'..'モ').to_a,
    ('ヤ'..'ヨ').to_a,
    ('ラ'..'ロ').to_a,
    ('ワ'..'ン').to_a
  ].freeze

  class << self
    def create_index(names)
      names.sort.group_by(&method(:initial)).to_a
    end

    private

    def initial(name)
      SYLLABARIES.find { |values| values.include?(name[0]) }.first
    end
  end
end
names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']

p NameIndex.create_index(names)
