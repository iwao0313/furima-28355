class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true [
  { id: 1, name: '--' },
   { id: 2, name: 'category' },
   { id: 3, name: 'status ' },
   { id: 4, name: 'shipping_fee_burden' },
   { id: 5, name: 'shipping_region' },
   { id: 6, name: 'days' },
   { id: 7, name: 'expiration_date' },
   { id: 8, name: 'security_code' },
   { id: 9, name: 'postal_code' },
   { id: 10, name: 'prefecture' }
  ]

end
