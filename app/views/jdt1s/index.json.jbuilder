json.array!(@jdt1s) do |jdt1|
  json.extract! jdt1, :id, :TransId, :Line_ID, :Account, :Debit, :Credit, :SYSCred, :SYSDeb, :FCDebit, :FCCredit, :FCCurrency, :DueDate, :SourceID, :SourceLine, :ShortName, :IntrnMatch, :ExtrMatch, :ContraAct, :LineMemo, :Ref3Line, :TransType, :RefDate, :Ref2Date, :Ref1, :Ref2, :CreatedBy, :BaseRef, :Project, :TransCode, :ProfitCode, :TaxDate, :SystemRate, :MthDate, :ToMthSum, :UserSign, :BatchNum, :FinncPriod, :RelTransId, :RelLineID, :RelType, :LogInstanc, :VatGroup, :BaseSum, :VatRate, :Indicator, :AdjTran, :RevSource, :ObjType, :VatDate, :PaymentRef, :SYSBaseSum, :MultMatch, :VatLine, :VatAmount, :SYSVatSum, :Closed, :GrossValue, :CheckAbs, :LineType, :DebCred, :SequenceNr, :StornoAcc, :BalDueDeb, :BalDueCred, :BalFcDeb, :BalFcCred, :BalScDeb, :BalScCred, :IsNet, :DunWizBlck, :DunnLevel, :DunDate, :TaxType, :TaxPostAcc, :StaCode, :StaType, :TaxCode, :ValidFrom, :GrossValFc, :LvlUpdDate, :OcrCode2, :OcrCode3, :OcrCode4, :OcrCode5, :MIEntry, :MIVEntry, :ClsInTP, :CenVatCom, :MatType, :PstngType, :ValidFrom2, :ValidFrom3, :ValidFrom4, :ValidFrom5, :Location, :WTaxCode, :EquVatRate, :EquVatSum, :SYSEquSum, :TotalVat, :SYSTVat, :WTLiable, :WTLine, :WTApplied, :WTAppliedS, :WTAppliedF, :WTSum, :WTSumFC, :WTSumSC, :PayBlock, :PayBlckRef, :LicTradNum, :InterimTyp, :DprId, :MatchRef, :Ordered, :CUP, :CIG, :BPLId, :BPLName, :VatRegNum, :SLEDGERF
  json.url jdt1_url(jdt1, format: :json)
end
