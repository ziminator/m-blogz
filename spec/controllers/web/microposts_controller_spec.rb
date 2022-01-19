require 'rails_helper'

RSpec.describe Web::MicropostsController, type: :controller do

  let(:micropost) { create(:micropost) }

  describe 'GET #index' do
    let(:microposts) { create_list(:micropost, 3) }
    
    before { get :index }

    it 'populated an array of all posts' do  
      expect(assigns(:microposts)).to match_array(microposts)
    end

    it 'renders index view' do
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    before { get :show, params: { id: micropost } }

    it 'renders show view' do
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    before { get :new }

    it 'renders show new' do
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    before { get :edit, params: { id: micropost } }

    it 'renders edit view' do
      expect(response).to render_template :edit
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves a new micropost in the database' do        
        expect { post :create, params: { micropost: attributes_for(:micropost) } }.to change(Micropost, :count).by(1)
      end

      it 'redirects to show view' do
        post :create, params: { micropost: attributes_for(:micropost) }
        expect(response).to redirect_to assigns(:micropost)
      end
    end

    context 'with invalid attributes' do
      it 'does not save the micropost' do
        expect { post :create, params: { micropost: attributes_for(:micropost, :invalid) } }.to_not change(Micropost, :count)
      end
      it 're-renders new view' do
        post :create, params: { micropost: attributes_for(:micropost, :invalid) }
        expect(response).to render_template :new
      end
    end
  end

  describe 'PATCH #update' do
    context 'with valid attributes' do
      it 'assigns the requested micropost to the @micropost' do        
        patch :update, params: { id: micropost, micropost: attributes_for(:micropost) }
        expect(assigns(:micropost)).to eq micropost
      end

      it 'change micropost attributes' do
        patch :update, params: { id: micropost, micropost: { body: 'new text' } }
        micropost.reload

        expect(micropost.body).to eq 'new text'
      end

      it 'redirects to updated micropost' do
        patch :update, params: { id: micropost, micropost: attributes_for(:micropost) }
        expect(response).to redirect_to micropost
      end
    end

    context 'with invalid attributes' do
      before { patch :update, params: { id: micropost, micropost: attributes_for(:micropost, :invalid) } }
      it 'does not change micropost' do
        micropost.reload

        expect(micropost.body).to eq 'MyText'
      end

      it 're-renders edit view' do
        expect(response).to render_template :edit
      end
    end
  end

  describe 'DELETE #destroy' do
    let!(:micropost) { create(:micropost) }

    it 'deletes the question' do
      expect { delete :destroy, params: { id: micropost } }.to change(Micropost, :count).by(-1)
    end

    it 'redirect to index' do
      delete :destroy, params: { id: micropost }
      expect(response).to redirect_to micropost_path      
    end
  end

end
