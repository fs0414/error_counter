require_dependency "error_counter/application_controller"

module ErrorCounter
  class CountersController < ApplicationController
    def index
      @individual_total = error_names.map do |key, value|
        value = read_all_log.scan(key).length
      end

      @total = @individual_total.sum

      @ratio = @individual_total.map do |i|
        100 * i / @total
      end
    end

    private

    def read_all_log
      @file = File.read("log/development.log")
    end

    def error_names
      @hash_errors = { "NameError" => 0,
                      "NoMethodError" => 1,
                      "ArgumentError" => 2,
                      "MissingExactTemplate" => 3,
                      "RoutingError" => 4,
                      "SyntaxError" => 5,
                      "UnknownFormat" => 6,
                      "LoadError" => 7,
                      "AuthenticityToken" => 8,
                      "PendingMigrationError" => 9,
                      "RecordNotFound" => 10
                    }
    end
  end
end
