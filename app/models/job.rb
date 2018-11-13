class Job < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  JOB_TYPES = ["1 år", "8 måneder", "6 måneder", "2 måneder"]
end
