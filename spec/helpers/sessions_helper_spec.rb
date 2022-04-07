RSpec.describe SessionsHelper do
  # I have no idea on how to test this module :(
  # I will write some code for now, will return
  # back to it later and stronger..

  let(:user) { User.create(username: 'gariban', email: 'gariban@gmail.com',  password: 'gariban123') }

  before { log_in(user) }

  it { expect(session[:user_id]).to eq(user.id) }

  describe '#current_user' do
    context 'when logged in' do
      it { expect(current_user).to eq(user) }
    end

    context 'when logged out' do
      before { log_out }

      it { expect(current_user).to eq(nil) }
    end
  end

  describe '#logged_in?' do
    it { expect(logged_in?).to eq(true) }

    context 'when logged out' do
      before { log_out }

      it { expect(logged_in?).to eq(false) }
    end
  end

  describe '#current_user?' do
    it { expect(current_user?(user)).to eq(true) }

    context 'when different user' do
      let(:dif_user) { User.create(username: 'dif_gariban', email: 'dif_gariban@gmail.com',  password: 'dif_gariban123') }

      it { expect(current_user?(dif_user)).to eq(false) }
    end
  end
end
