require 'log.rb'
require 'bobject.rb'
require 'ctransactionjournalobject.rb'
class JdtController < ApplicationController
    # before_action :doorkeeper_authorize!
    def CreateJournalEntry
        context = {}
        # context = build_context(params)
        tjObj = CTransactionJournalObject.new(context)
        tjObj.CompleteJdtLine()
        tjObj.save
        @template = Liquid::Template.parse("hi {{name}}") # Parses and compiles the template
        s = @template.render('name' => 'tobi')                # => "hi tobi"
        p s
        render :text=>"ok"
    end
end