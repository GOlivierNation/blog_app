# frozen_string_literal: true

require 'rails_helper'

before(:each) do
  @c = c.new(text: 'One c', author_id: 2, post_id: 4)
end

before { @c.save }

it 'if title is present' do
  @c.text = nil
  expect(@c).to_not be_valid
end

it 'if author_id is integer' do
  @c.author_id = 'W'
  expect(@c).to_not be_valid
end

it 'if post_id is integer' do
  @c.post_id = 'Q'
  expect(@c).to_not be_valid
end

it 'if author_id is present' do
  @c.author_id = false
  expect(@c).to_not be_valid
end

it 'if post_id is present' do
  @c.post_id = nil
  @c.author_id = nil
  expect(@c).to_not be_valid
end

it 'if author_id is not present' do
  @c.author_id = nil
  expect(@c).to_not be_valid
end

it 'if post_id is not present' do
  @c.post_id = nil
  expect(@c).to_not be_valid
end
