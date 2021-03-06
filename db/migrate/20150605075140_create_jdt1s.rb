class CreateJdt1s < ActiveRecord::Migration
  def change
    create_table :jdt1s do |t|
      t.integer :TransId
      t.integer :Line_ID
      t.string :Account
      t.float :Debit
      t.float :Credit
      t.float :SYSCred
      t.float :SYSDeb
      t.float :FCDebit
      t.float :FCCredit
      t.string :FCCurrency
      t.date :DueDate
      t.integer :SourceID
      t.integer :SourceLine
      t.string :ShortName
      t.integer :IntrnMatch
      t.integer :ExtrMatch
      t.string :ContraAct
      t.string :LineMemo
      t.string :Ref3Line
      t.string :TransType
      t.date :RefDate
      t.date :Ref2Date
      t.string :Ref1
      t.string :Ref2
      t.integer :CreatedBy
      t.string :BaseRef
      t.string :Project
      t.string :TransCode
      t.string :ProfitCode
      t.date :TaxDate
      t.float :SystemRate
      t.date :MthDate
      t.float :ToMthSum
      t.integer :UserSign
      t.integer :BatchNum
      t.integer :FinncPriod
      t.integer :RelTransId
      t.integer :RelLineID
      t.string :RelType
      t.integer :LogInstanc
      t.string :VatGroup
      t.float :BaseSum
      t.float :VatRate
      t.string :Indicator
      t.string :AdjTran
      t.string :RevSource
      t.string :ObjType
      t.date :VatDate
      t.string :PaymentRef
      t.float :SYSBaseSum
      t.integer :MultMatch
      t.string :VatLine
      t.float :VatAmount
      t.float :SYSVatSum
      t.string :Closed
      t.float :GrossValue
      t.integer :CheckAbs
      t.integer :LineType
      t.string :DebCred
      t.integer :SequenceNr
      t.string :StornoAcc
      t.float :BalDueDeb
      t.float :BalDueCred
      t.float :BalFcDeb
      t.float :BalFcCred
      t.float :BalScDeb
      t.float :BalScCred
      t.string :IsNet
      t.string :DunWizBlck
      t.integer :DunnLevel
      t.date :DunDate
      t.integer :TaxType
      t.string :TaxPostAcc
      t.string :StaCode
      t.integer :StaType
      t.string :TaxCode
      t.date :ValidFrom
      t.float :GrossValFc
      t.date :LvlUpdDate
      t.string :OcrCode2
      t.string :OcrCode3
      t.string :OcrCode4
      t.string :OcrCode5
      t.integer :MIEntry
      t.integer :MIVEntry
      t.integer :ClsInTP
      t.integer :CenVatCom
      t.integer :MatType
      t.integer :PstngType
      t.date :ValidFrom2
      t.date :ValidFrom3
      t.date :ValidFrom4
      t.date :ValidFrom5
      t.integer :Location
      t.string :WTaxCode
      t.float :EquVatRate
      t.float :EquVatSum
      t.float :SYSEquSum
      t.float :TotalVat
      t.float :SYSTVat
      t.string :WTLiable
      t.string :WTLine
      t.float :WTApplied
      t.float :WTAppliedS
      t.float :WTAppliedF
      t.float :WTSum
      t.float :WTSumFC
      t.float :WTSumSC
      t.string :PayBlock
      t.integer :PayBlckRef
      t.string :LicTradNum
      t.integer :InterimTyp
      t.integer :DprId
      t.string :MatchRef
      t.string :Ordered
      t.integer :CUP
      t.integer :CIG
      t.integer :BPLId
      t.string :BPLName
      t.string :VatRegNum
      t.string :SLEDGERF

      t.timestamps null: false
    end
  end
end
