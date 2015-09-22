# encoding: UTF-8
class User < ActiveRecord::Base

	attr_accessor :login, :password

  validates :login, presence: {message: "Preencha o campo login"}
  validates :password, presence: {message: "Preencha o campo password"}
	validates :login, uniqueness: {message: "Usuário já existe"}
end