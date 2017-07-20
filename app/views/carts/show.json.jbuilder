json.(@cart, :id,
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
json.partial! 'cart', cart: @cart
