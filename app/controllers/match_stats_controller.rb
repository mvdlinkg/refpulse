class MatchStatsController < ApplicationController
  # GET /match_stats
  # GET /match_stats.json
  def index
    @match_stats = MatchStat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @match_stats }
    end
  end

  # GET /match_stats/1
  # GET /match_stats/1.json
  def show
    @match_stat = MatchStat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @match_stat }
    end
  end

  # GET /match_stats/new
  # GET /match_stats/new.json
  def new
    @match_stat = MatchStat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @match_stat }
    end
  end

  # GET /match_stats/1/edit
  def edit
    @match_stat = MatchStat.find(params[:id])
  end

  # POST /match_stats
  # POST /match_stats.json
  def create
    @match_stat = MatchStat.new(params[:match_stat])

    respond_to do |format|
      if @match_stat.save
        format.html { redirect_to @match_stat, notice: 'Match stat was successfully created.' }
        format.json { render json: @match_stat, status: :created, location: @match_stat }
      else
        format.html { render action: "new" }
        format.json { render json: @match_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /match_stats/1
  # PUT /match_stats/1.json
  def update
    @match_stat = MatchStat.find(params[:id])

    respond_to do |format|
      if @match_stat.update_attributes(params[:match_stat])
        format.html { redirect_to @match_stat, notice: 'Match stat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @match_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_stats/1
  # DELETE /match_stats/1.json
  def destroy
    @match_stat = MatchStat.find(params[:id])
    @match_stat.destroy

    respond_to do |format|
      format.html { redirect_to match_stats_url }
      format.json { head :no_content }
    end
  end
end
