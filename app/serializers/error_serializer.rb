class ErrorSerializer



  def self.password_mismatch
    { "errors":
      {
        "password": ['Passwords do not match']
      }      
    }
  end

  def self.bad_credentials
    { "errors":
      {
        "credentials": ['Bad credentials']
      }      
    }
  end
  

  def self.bad_api_key
    { "errors":
      {
        "credentials": ['Invalid API key']
      }      
    }
  end


end 