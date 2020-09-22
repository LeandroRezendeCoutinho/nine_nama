# frozen_string_literal: true

MoneyRails.configure do |config|
  config.default_currency = :brl
  config.rounding_mode = BigDecimal::ROUND_HALF_UP
  config.no_cents_if_whole = false
end
