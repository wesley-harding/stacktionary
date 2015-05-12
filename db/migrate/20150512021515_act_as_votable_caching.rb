class ActAsVotableCaching < ActiveRecord::Migration
  @models = [:entries, :definitions, :examples, :references]

  def self.up
    @models.each do |model|
      add_column model, :cached_votes_total, :integer, :default => 0
      add_column model, :cached_votes_score, :integer, :default => 0
      add_column model, :cached_votes_up, :integer, :default => 0
      add_column model, :cached_votes_down, :integer, :default => 0
      add_column model, :cached_weighted_score, :integer, :default => 0
      add_column model, :cached_weighted_total, :integer, :default => 0
      add_column model, :cached_weighted_average, :float, :default => 0.0
      add_index  model, :cached_votes_total
      add_index  model, :cached_votes_score
      add_index  model, :cached_votes_up
      add_index  model, :cached_votes_down
      add_index  model, :cached_weighted_score
      add_index  model, :cached_weighted_total
      add_index  model, :cached_weighted_average
    end
    # Uncomment this line to force caching of existing votes
    # Post.find_each(&:update_cached_votes)
  end

  def self.down
    @models.each do |model|
      remove_column model, :cached_votes_total
      remove_column model, :cached_votes_score
      remove_column model, :cached_votes_up
      remove_column model, :cached_votes_down
      remove_column model, :cached_weighted_score
      remove_column model, :cached_weighted_total
      remove_column model, :cached_weighted_average
    end
  end
end
