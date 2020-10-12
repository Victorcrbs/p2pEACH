class Usuario < ApplicationRecord
    validates :nome, presence: {message: "É obrigatório informar o nome!"}
    validates :nusp, presence: {message: "É obrigatório informar seu número USP!"}
    validates :senha, presence: {message: "É obrigatório informar sua senha!"}
    validates :numero, presence: {message: "É obrigatório informar seu número de telefone!"}
end
