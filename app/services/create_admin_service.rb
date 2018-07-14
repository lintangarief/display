class CreateAdminService
  def call
    business = Business.find_or_create_by!(email: Rails.application.secrets.admin_email) do |business|
        business.password = Rails.application.secrets.admin_password
        business.password_confirmation = Rails.application.secrets.admin_password
        business.confirm
      end
  end
end
