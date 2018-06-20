# frozen_string_literal: true

require 'spec_helper'
require 'yaml'

describe 'Rubocop Format' do # rubocop:disable RSpec/DescribeClass
  def parse_key(key)
    section = key.gsub(/\/.*/, '')
    cop = key.gsub(/.*\//, '')
    [section, cop]
  end

  shared_examples_for 'ordered cops' do
    let(:cops_by_section) {
      info = {}
      config.keys.each do |key|
        section, cop = parse_key(key)
        (info[section] ||= []) << cop
      end
      info
    }

    it 'orders section cops' do
      cops_by_section.values.each do |cops|
        expect(cops.sort).to eq(cops)
      end
    end
  end

  shared_examples_for 'grouped sections' do
    let(:ordered_sections) {
      sections = []
      config.keys.each do |key|
        section, = parse_key(key)
        sections << section if sections.last != section
      end
      sections
    }

    it 'keeps sections grouped' do
      expect(ordered_sections.uniq).to eq(ordered_sections)
    end
  end

  context 'rubocop-ruby' do
    let(:config) { YAML.load_file('ruby/rubocop-ruby.yml') }

    it_behaves_like 'ordered cops'
    it_behaves_like 'grouped sections'
  end

  context 'rubocop-rspec' do
    let(:config) { YAML.load_file('ruby/rubocop-rspec.yml') }

    it_behaves_like 'ordered cops'
    it_behaves_like 'grouped sections'
  end

  context 'rubocop-rails' do
    let(:config) { YAML.load_file('ruby/rubocop-rails.yml') }

    it_behaves_like 'ordered cops'
    it_behaves_like 'grouped sections'
  end
end
