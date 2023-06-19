require 'swagger_helper'

describe 'Cabs API' do
  path '/api/v1/cabs' do
    post 'Creates a cab' do
      tags 'Cabs'
      consumes 'application/json'
      parameter name: :cab, in: :body, schema: {
        type: :object,
        properties: {
          manufacturer: { type: :string },
          description: { type: :string },
          image_url: { type: :string },
          transmission: { type: :string },
          model: { type: :string },
          rental_price: { type: :number },
          seating_capacity: { type: :integer },
          body_type: { type: :string },
          discount: { type: :integer },
          engine_type: { type: :string },
          user_id: { type: :integer }
        },
        required: %w[manufacturer transmission image_url model rental_price seating_capacity
                     engine_type user_id]
      }

      response '201', 'cab created' do
        let(:cab) { { manufacturer: 'Ford', transmission: 'Automatic', image_url: 'http://example.com/car.jpg', model: 'Mustang', rental_price: 100, seating_capacity: 4, engine_type: 'Petrol', user_id: 1 } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:cab) { { manufacturer: 'Ford' } }
        run_test!
      end
    end
  end

  path '/api/v1/cabs/{id}' do
    get 'Retrieves a cab' do
      tags 'Cabs'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'cab found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 manufacturer: { type: :string },
                 description: { type: :string },
                 image_url: { type: :string },
                 transmission: { type: :string },
                 model: { type: :string },
                 rental_price: { type: :number },
                 seating_capacity: { type: :integer },
                 body_type: { type: :string },
                 discount: { type: :integer },
                 engine_type: { type: :string },
                 user_id: { type: :integer }
               },
               required: %w[id manufacturer transmission image_url model rental_price seating_capacity
                            engine_type user_id]

        let(:id) { Cab.create(manufacturer: 'Ford', transmission: 'Automatic', image_url: 'http://example.com/car.jpg', model: 'Mustang', rental_price: 100, seating_capacity: 4, engine_type: 'Petrol', user_id: 1).id }
        run_test!
      end

      response '404', 'cab not found' do
        let(:id) { 999 }
        run_test!
      end
    end
  end

  path '/api/v1/reservations' do
    post 'Creates a reservation' do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          reserve_date: { type: :string },
          start_date: { type: :string },
          end_date: { type: :string },
          cab_id: { type: :integer },
          user_id: { type: :integer }
        },
        required: %w[reserve_date start_date end_date cab_id user_id]
      }

      response '201', 'reservation created' do
        let(:reservation) do
          { reserve_date: '2023-06-18', start_date: '2023-06-19', end_date: '2023-06-21', cab_id: 1, user_id: 1 }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:reservation) { { reserve_date: '2023-06-18' } }
        run_test!
      end
    end
  end

  path '/api/v1/reservations/{id}' do
    get 'Retrieves a reservation' do
      tags 'Reservations'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'reservation found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 reserve_date: { type: :string },
                 start_date: { type: :string },
                 end_date: { type: :string },
                 cab_id: { type: :integer },
                 user_id: { type: :integer }
               },
               required: %w[id reserve_date start_date end_date cab_id user_id]

        let(:id) do
          Reservation.create(reserve_date: '2023-06-18', start_date: '2023-06-19', end_date: '2023-06-21', cab_id: 1,
                             user_id: 1).id
        end
        run_test!
      end

      response '404', 'reservation not found' do
        let(:id) { 999 }
        run_test!
      end
    end
  end
end
