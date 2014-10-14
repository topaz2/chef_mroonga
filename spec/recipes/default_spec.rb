require 'spec_helper'

describe 'mroonga::default' do
  context 'debian 7' do
    let(:chef_run) { ChefSpec::Runner.new(platform: 'debian', version: '7.4').converge('recipe[apt]', described_recipe) }

    it 'adds mroonga repository' do
      expect(chef_run).to add_apt_repository('mroonga-wheezy')
    end
    %w( groonga-keyring mysql-server-mroonga groonga-tokenizer-mecab ).each do |package|
      it "installs #{package}" do
        expect(chef_run).to install_package(package)
      end
    end
  end

  context 'ubuntu 12.04' do
    let(:chef_run) { ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04').converge('recipe[apt]', described_recipe) }
    before do
      stub_command('apt-key list | grep CB64A157').and_return(true)
    end

    it 'adds mroonga repository' do
      expect(chef_run).to add_apt_repository('mroonga-precise')
    end
    it 'installs mysql-server-mroonga' do
      %w( software-properties-common lsb-release mysql-server-mroonga groonga-tokenizer-mecab ).each do |package|
        expect(chef_run).to install_package(package)
      end
    end
  end

  context 'ubuntu 14.04' do
    let(:chef_run) { ChefSpec::Runner.new(platform: 'ubuntu', version: '14.04').converge('recipe[apt]', described_recipe) }
    before do
      stub_command('apt-key list | grep CB64A157').and_return(true)
    end

    it 'adds mroonga repository' do
      expect(chef_run).to add_apt_repository('mroonga-trusty')
    end
    it 'installs mysql-server-mroonga' do
      %w( software-properties-common lsb-release mysql-server-mroonga groonga-tokenizer-mecab ).each do |package|
        expect(chef_run).to install_package(package)
      end
    end
  end
end
