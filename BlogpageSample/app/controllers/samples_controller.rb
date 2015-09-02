class SamplesController < ApplicationController
  def input
  end
  def output
    @data = Sample.all
  end
  def media
    @value = Sample.new
    @value.title = params['sample']['title']
    @value.contents = params['sample']['contents']
    @value.save
    redirect_to :action => 'output'
  end
end
