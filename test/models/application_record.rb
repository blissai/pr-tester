require 'spec_helper'

RSpec.describe GithubStatusWorker, type: :model do
  let(:pull_request) { FactoryGirl.build_stubbed :pull_request }
  let(:repo) { FactoryGirl.build_stubbed :repository }
  let(:github_status_worker) { GithubStatusWorker.new }

  describe '#find_state' do
    subject { github_status_worker.find_state(repo, pull_request)}
    context 'when pull_request_fail is true then is should fail' do
      before { repo.pull_request_fail = false}
      # always success in this state
      it { is_expected.to eq 'success'}
    end
  end
end
