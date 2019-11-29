
describe "delete" do
  context "when a registered user" do
    let(:user) { build(:registered_user) } #faz a massa de teste, a criação do usuário
    let(:token) { ApiUser.token(user.email, user.password) } #
    let(:result) { ApiUser.remove(token, user.id) }# :result objeto para consumir abaixo na expectativa 

    it { expect(result.response.code).to eql "204" }
  end

  context "when not exists" do
    let(:user) { build(:registered_user) }
    let(:token) { ApiUser.token(user.email, user.password) }
    let(:result) { ApiUser.remove(token, "0") }

    it { expect(result.response.code).to eql "404" }
  end

  context "when wrong id" do
    let(:user) { build(:registered_user) }
    let(:token) { ApiUser.token(user.email, user.password) }
    let(:result) { ApiUser.remove(token, "abc123") }

    it { expect(result.response.code).to eql "409" }
  end
end
