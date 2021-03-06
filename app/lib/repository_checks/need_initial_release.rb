# frozen_string_literal: true

class NeedInitialRelease < RepositoryCheckBase
  def perform
    submit_result :released, (RepoStatusData.forge_releases.include?(repo.name) ||
                              LEGACY_OR_BROKEN_NOBODY_KNOWS.include?(repo.name))
  end
end
