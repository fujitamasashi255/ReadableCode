# frozen_string_literal: true

Rails.application.config.session_store :redis_store,
  servers: ["redis://redis:6379/0/session"],
  expire_after: 90.minutes,
  key: "_#{Rails.application.class.module_parent_name.downcase}_session",
  threadsafe: true,
  secure: false
