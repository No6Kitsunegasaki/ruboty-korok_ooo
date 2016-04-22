module Ruboty
  module KorokOoo
    module Actions
      class Ooo < Ruboty::Actions::Base
        MEDAL_FORMS = {
          'タカ'=>{'トラ'=>{'バッタ'=>'タットッバ！タトバ！タットッバッ！!'}, 'クジャク'=>{'コンドル'=>'タージャードルー！'}},
          'クワガタ'=>{'カマキリ'=>{'バッタ'=>'ガータガタガタ！ガタキリッバ！ガタキリバ！'}},
          'ライオン'=>{'トラ'=>{'チーター'=>'ラットラーター！ラットラーター！'}},
          'サイ'=>{'ゴリラ'=>{'ゾウ'=>'サゴーゾ……サッゴーゾー！'}},
          'シャチ'=>{'ウナギ'=>{'タコ'=>'シャシャシャウター！シャシャシャウター！'}},
          'プテラ'=>{'トリケラ'=>{'ティラノ'=>'プ！ト！ティ！ラ～ノ！ザウル～ス！'}},
          '悪'=>{'即'=>{'斬'=>'牙突！'}},
          'ヌルヌル'=>{'ツバメ'=>{'イヌ'=>'ヌ！ル！ツ！バイ！'}},
        }

        def call
          combo = getCombo(MEDAL_FORMS, [message[:medal1], message[:medal2], message[:medal3]])
          message.reply(sprintf('@%s %s！%s！%s！%s', message.from_name, message[:medal1], message[:medal2], message[:medal3], combo))
        end

        private

        def getCombo(combos, medals)
          return combos if combos.kind_of?(String)
          medal = medals.shift
          combos.has_key?(medal) ? getCombo(combos[medal], medals) : nil
        end
      end
    end
  end
end
