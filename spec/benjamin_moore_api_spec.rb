RSpec.describe BenjaminMooreApi do
  it "has a version number" do
    expect(BenjaminMooreApi::VERSION).not_to be nil
  end

  it "does always true" do
    expect(true).to eq(true)
  end

  context "colors methods returns Hash:" do
    before(:each) do
      @right_client = BenjaminMooreApi.client(api_key: ENV['API_KEY'])
    end
    it "color_detail" do
      obj = @right_client.color_detail(color_number: 'qqq')
      expect(obj.class).to eq(Hash)
    end
    it "colors_from_numbers" do
      obj = @right_client.colors_from_numbers(list: '')
      expect(obj.class).to eq(Hash)
    end
    it "palettes" do
      obj = @right_client.palettes()
      expect(obj.class).to eq(Hash)
    end
    it "palettes_by_category" do
      obj = @right_client.palettes_by_category(category: '')
      expect(obj.class).to eq(Hash)
    end
    it "palette_by_code" do
      obj = @right_client.palette_by_code(code: '')
      expect(obj.class).to eq(Hash)
    end
  end

  context "products methods returns Hash:" do
    before(:each) do
      @right_client = BenjaminMooreApi.client(api_key: ENV['API_KEY'])
    end
    it "products_from_number" do
      obj = @right_client.products_from_number(product_list: 'qqq')
      expect(obj.class).to eq(Hash)
    end
    it "families_by_codes" do
      obj = @right_client.families_by_codes(codes: 'qqq')
      expect(obj.class).to eq(Hash)
    end
    it "product_detail" do
      obj = @right_client.product_detail(product_number: '')
      expect(obj.class).to eq(Hash)
    end
    it "families" do
      obj = @right_client.families()
      expect(obj.class).to eq(Hash)
    end
    it "family" do
      obj = @right_client.family(code: 'qqq')
      expect(obj.class).to eq(Hash)
    end
  end

  it "raise ApiExceptions::NotFoundError when wrong API key" do
    wrong_client = BenjaminMooreApi.client(api_key: "wrong_api")
    expect do
      obj = wrong_client.palettes(with_colors: true)
    end.to raise_error(ApiExceptions::NotFoundError)
  end

end
