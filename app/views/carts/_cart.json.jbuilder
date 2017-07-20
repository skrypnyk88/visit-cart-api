json.cart( cart, :id,
            :first_name,
            :last_name,
            :position,
            :phone,
            :city,
            :streat,
            :email,
            :company_name,
            :building,
            :visible)
json.url cart.attachment ? asset_url(cart.attachment.file.url) : nil
