# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150910165453) do

  create_table "appexts", force: :cascade do |t|
    t.integer  "appid",        limit: 4
    t.string   "name",         limit: 255
    t.string   "icon_s",       limit: 255
    t.string   "icon_m",       limit: 255
    t.string   "icon_b",       limit: 255
    t.integer  "show_in_left", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "jdt1s", force: :cascade do |t|
    t.integer  "TransId",    limit: 4
    t.integer  "Line_ID",    limit: 4
    t.string   "Account",    limit: 255
    t.float    "Debit",      limit: 24
    t.float    "Credit",     limit: 24
    t.float    "SYSCred",    limit: 24
    t.float    "SYSDeb",     limit: 24
    t.float    "FCDebit",    limit: 24
    t.float    "FCCredit",   limit: 24
    t.string   "FCCurrency", limit: 255
    t.date     "DueDate"
    t.integer  "SourceID",   limit: 4
    t.integer  "SourceLine", limit: 4
    t.string   "ShortName",  limit: 255
    t.integer  "IntrnMatch", limit: 4
    t.integer  "ExtrMatch",  limit: 4
    t.string   "ContraAct",  limit: 255
    t.string   "LineMemo",   limit: 255
    t.string   "Ref3Line",   limit: 255
    t.string   "TransType",  limit: 255
    t.date     "RefDate"
    t.date     "Ref2Date"
    t.string   "Ref1",       limit: 255
    t.string   "Ref2",       limit: 255
    t.integer  "CreatedBy",  limit: 4
    t.string   "BaseRef",    limit: 255
    t.string   "Project",    limit: 255
    t.string   "TransCode",  limit: 255
    t.string   "ProfitCode", limit: 255
    t.date     "TaxDate"
    t.float    "SystemRate", limit: 24
    t.date     "MthDate"
    t.float    "ToMthSum",   limit: 24
    t.integer  "UserSign",   limit: 4
    t.integer  "BatchNum",   limit: 4
    t.integer  "FinncPriod", limit: 4
    t.integer  "RelTransId", limit: 4
    t.integer  "RelLineID",  limit: 4
    t.string   "RelType",    limit: 255
    t.integer  "LogInstanc", limit: 4
    t.string   "VatGroup",   limit: 255
    t.float    "BaseSum",    limit: 24
    t.float    "VatRate",    limit: 24
    t.string   "Indicator",  limit: 255
    t.string   "AdjTran",    limit: 255
    t.string   "RevSource",  limit: 255
    t.string   "ObjType",    limit: 255
    t.date     "VatDate"
    t.string   "PaymentRef", limit: 255
    t.float    "SYSBaseSum", limit: 24
    t.integer  "MultMatch",  limit: 4
    t.string   "VatLine",    limit: 255
    t.float    "VatAmount",  limit: 24
    t.float    "SYSVatSum",  limit: 24
    t.string   "Closed",     limit: 255
    t.float    "GrossValue", limit: 24
    t.integer  "CheckAbs",   limit: 4
    t.integer  "LineType",   limit: 4
    t.string   "DebCred",    limit: 255
    t.integer  "SequenceNr", limit: 4
    t.string   "StornoAcc",  limit: 255
    t.float    "BalDueDeb",  limit: 24
    t.float    "BalDueCred", limit: 24
    t.float    "BalFcDeb",   limit: 24
    t.float    "BalFcCred",  limit: 24
    t.float    "BalScDeb",   limit: 24
    t.float    "BalScCred",  limit: 24
    t.string   "IsNet",      limit: 255
    t.string   "DunWizBlck", limit: 255
    t.integer  "DunnLevel",  limit: 4
    t.date     "DunDate"
    t.integer  "TaxType",    limit: 4
    t.string   "TaxPostAcc", limit: 255
    t.string   "StaCode",    limit: 255
    t.integer  "StaType",    limit: 4
    t.string   "TaxCode",    limit: 255
    t.date     "ValidFrom"
    t.float    "GrossValFc", limit: 24
    t.date     "LvlUpdDate"
    t.string   "OcrCode2",   limit: 255
    t.string   "OcrCode3",   limit: 255
    t.string   "OcrCode4",   limit: 255
    t.string   "OcrCode5",   limit: 255
    t.integer  "MIEntry",    limit: 4
    t.integer  "MIVEntry",   limit: 4
    t.integer  "ClsInTP",    limit: 4
    t.integer  "CenVatCom",  limit: 4
    t.integer  "MatType",    limit: 4
    t.integer  "PstngType",  limit: 4
    t.date     "ValidFrom2"
    t.date     "ValidFrom3"
    t.date     "ValidFrom4"
    t.date     "ValidFrom5"
    t.integer  "Location",   limit: 4
    t.string   "WTaxCode",   limit: 255
    t.float    "EquVatRate", limit: 24
    t.float    "EquVatSum",  limit: 24
    t.float    "SYSEquSum",  limit: 24
    t.float    "TotalVat",   limit: 24
    t.float    "SYSTVat",    limit: 24
    t.string   "WTLiable",   limit: 255
    t.string   "WTLine",     limit: 255
    t.float    "WTApplied",  limit: 24
    t.float    "WTAppliedS", limit: 24
    t.float    "WTAppliedF", limit: 24
    t.float    "WTSum",      limit: 24
    t.float    "WTSumFC",    limit: 24
    t.float    "WTSumSC",    limit: 24
    t.string   "PayBlock",   limit: 255
    t.integer  "PayBlckRef", limit: 4
    t.string   "LicTradNum", limit: 255
    t.integer  "InterimTyp", limit: 4
    t.integer  "DprId",      limit: 4
    t.string   "MatchRef",   limit: 255
    t.string   "Ordered",    limit: 255
    t.integer  "CUP",        limit: 4
    t.integer  "CIG",        limit: 4
    t.integer  "BPLId",      limit: 4
    t.string   "BPLName",    limit: 255
    t.string   "VatRegNum",  limit: 255
    t.string   "SLEDGERF",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "oauth_access_grants", force: :cascade do |t|
    t.integer  "resource_owner_id", limit: 4,     null: false
    t.integer  "application_id",    limit: 4,     null: false
    t.string   "token",             limit: 255,   null: false
    t.integer  "expires_in",        limit: 4,     null: false
    t.text     "redirect_uri",      limit: 65535, null: false
    t.datetime "created_at",                      null: false
    t.datetime "revoked_at"
    t.string   "scopes",            limit: 255
  end

  add_index "oauth_access_grants", ["token"], name: "index_oauth_access_grants_on_token", unique: true, using: :btree

  create_table "oauth_access_tokens", force: :cascade do |t|
    t.integer  "resource_owner_id", limit: 4
    t.integer  "application_id",    limit: 4
    t.string   "token",             limit: 255, null: false
    t.string   "refresh_token",     limit: 255
    t.integer  "expires_in",        limit: 4
    t.datetime "revoked_at"
    t.datetime "created_at",                    null: false
    t.string   "scopes",            limit: 255
  end

  add_index "oauth_access_tokens", ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true, using: :btree
  add_index "oauth_access_tokens", ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id", using: :btree
  add_index "oauth_access_tokens", ["token"], name: "index_oauth_access_tokens_on_token", unique: true, using: :btree

  create_table "oauth_applications", force: :cascade do |t|
    t.string   "name",         limit: 255,                null: false
    t.string   "uid",          limit: 255,                null: false
    t.string   "secret",       limit: 255,                null: false
    t.text     "redirect_uri", limit: 65535,              null: false
    t.string   "scopes",       limit: 255,   default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "author",       limit: 4
    t.string   "cat",          limit: 255
    t.integer  "api",          limit: 4,     default: 0
    t.text     "api_uri",      limit: 65535
  end

  add_index "oauth_applications", ["uid"], name: "index_oauth_applications_on_uid", unique: true, using: :btree

  create_table "ojdts", force: :cascade do |t|
    t.integer  "BatchNum",   limit: 4
    t.integer  "TransId",    limit: 4
    t.string   "BtfStatus",  limit: 255
    t.string   "TransType",  limit: 255
    t.string   "BaseRef",    limit: 255
    t.date     "RefDate"
    t.string   "Memo",       limit: 255
    t.string   "Ref1",       limit: 255
    t.string   "Ref2",       limit: 255
    t.integer  "CreatedBy",  limit: 4
    t.float    "LocTotal",   limit: 24
    t.float    "FcTotal",    limit: 24
    t.float    "SysTotal",   limit: 24
    t.string   "TransCode",  limit: 255
    t.string   "OrignCurr",  limit: 255
    t.float    "TransRate",  limit: 24
    t.integer  "BtfLine",    limit: 4
    t.string   "TransCurr",  limit: 255
    t.string   "Project",    limit: 255
    t.date     "DueDate"
    t.date     "TaxDate"
    t.string   "PCAddition", limit: 255
    t.integer  "FinncPriod", limit: 4
    t.string   "DataSource", limit: 255
    t.date     "UpdateDate"
    t.date     "CreateDate"
    t.integer  "UserSign",   limit: 4
    t.integer  "UserSign2",  limit: 4
    t.string   "RefndRprt",  limit: 255
    t.integer  "LogInstanc", limit: 4
    t.string   "ObjType",    limit: 255
    t.string   "Indicator",  limit: 255
    t.string   "AdjTran",    limit: 255
    t.string   "RevSource",  limit: 255
    t.date     "StornoDate"
    t.integer  "StornoToTr", limit: 4
    t.string   "AutoStorno", limit: 255
    t.string   "Corisptivi", limit: 255
    t.date     "VatDate"
    t.string   "StampTax",   limit: 255
    t.integer  "Series",     limit: 4
    t.integer  "Number",     limit: 4
    t.string   "AutoVAT",    limit: 255
    t.integer  "DocSeries",  limit: 4
    t.string   "FolioPref",  limit: 255
    t.integer  "FolioNum",   limit: 4
    t.integer  "CreateTime", limit: 4
    t.string   "BlockDunn",  limit: 255
    t.string   "ReportEU",   limit: 255
    t.string   "Report347",  limit: 255
    t.string   "Printed",    limit: 255
    t.string   "DocType",    limit: 255
    t.integer  "AttNum",     limit: 4
    t.string   "GenRegNo",   limit: 255
    t.integer  "RG23APart2", limit: 4
    t.integer  "RG23CPart2", limit: 4
    t.integer  "MatType",    limit: 4
    t.string   "Creator",    limit: 255
    t.string   "Approver",   limit: 255
    t.integer  "Location",   limit: 4
    t.integer  "SeqCode",    limit: 4
    t.integer  "Serial",     limit: 4
    t.string   "SeriesStr",  limit: 255
    t.string   "SubStr",     limit: 255
    t.string   "AutoWT",     limit: 255
    t.float    "WTSum",      limit: 24
    t.float    "WTSumSC",    limit: 24
    t.float    "WTSumFC",    limit: 24
    t.float    "WTApplied",  limit: 24
    t.float    "WTAppliedS", limit: 24
    t.float    "WTAppliedF", limit: 24
    t.float    "BaseAmnt",   limit: 24
    t.float    "BaseAmntSC", limit: 24
    t.float    "BaseAmntFC", limit: 24
    t.float    "BaseVtAt",   limit: 24
    t.float    "BaseVtAtSC", limit: 24
    t.float    "BaseVtAtFC", limit: 24
    t.string   "VersionNum", limit: 255
    t.integer  "BaseTrans",  limit: 4
    t.string   "ResidenNum", limit: 255
    t.string   "OperatCode", limit: 255
    t.string   "Ref3",       limit: 255
    t.string   "SSIExmpt",   limit: 255
    t.text     "SignMsg",    limit: 65535
    t.text     "SignDigest", limit: 65535
    t.string   "CertifNum",  limit: 255
    t.integer  "KeyVersion", limit: 4
    t.integer  "CUP",        limit: 4
    t.integer  "CIG",        limit: 4
    t.string   "SupplCode",  limit: 255
    t.integer  "SPSrcType",  limit: 4
    t.integer  "SPSrcID",    limit: 4
    t.integer  "SPSrcDLN",   limit: 4
    t.string   "DeferedTax", limit: 255
    t.integer  "AgrNo",      limit: 4
    t.integer  "SeqNum",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "userapps", force: :cascade do |t|
    t.integer  "uid",        limit: 4
    t.integer  "app",        limit: 4
    t.string   "perm",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "pwd",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
