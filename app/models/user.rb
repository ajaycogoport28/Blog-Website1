class User < ApplicationRecord
    has_many(
        :blogs,
        class_name: 'Blog',
        foreign_key: 'user_id',
        inverse_of: :user,
        dependent: :destroy
    )
end
