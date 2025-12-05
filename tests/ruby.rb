class App < Struct.new(:id, :name, :os, :user_agent, :plans, :serial_options, keyword_init: true)
  extend ActiveModel::Translation

  class AppNotFound < StandardError; end
  class PlanNotFound < StandardError; end

  def initialize(*args)
    super

    self.plans.map! { |plan| Plan.new(**plan) }
    self.serial_options = SerialOptions.new(**self.serial_options)
  end

  def icon
    "apps/#{id}.png"
  end

  def find_plan(id)
    plans.detect { |plan| plan.id == id } || (raise PlanNotFound)
  end

  def download_link
    "https://services.panini.house/apps/#{id}/latest_releases"
  end

  def download_link_for(serial_number)
    "#{download_link}?serial_number=#{serial_number}"
  end

  def marketing_list
    Sendy.lists.optional[id]
  end

  def checkout_recovery_list
    Sendy.lists.optional["#{id}_checkout_recovery"]
  end

  def self.all
    template = ERB.new File.read(Rails.root.join("app", "data", "apps.yml.erb"))

    YAML.load(template.result)
      .map(&:with_indifferent_access)
      .map { |app| new(**app) }
  end

  def self.find(id)
    all.find { |app| app.id == id } || (raise AppNotFound)
  end
end
