# frozen_string_literal: true
ActiveRecord::Schema[7.0].define(version: 20_221_020_111_427) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'doctors', force: :cascade do |t|
    t.string 'name', limit: 32, null: false
    t.string 'email', limit: 32, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'patients', force: :cascade do |t|
    t.string 'name', limit: 32, null: false
    t.string 'email', limit: 32, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.index ['email'], name: 'index_patients_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_patients_on_reset_password_token', unique: true
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name', limit: 32, null: false
    t.string 'email', limit: 32, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
  create_table 'cities', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
