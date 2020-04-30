Before do
    def initialize(platform)
        case platform
        when 'ANDROID'
            load_module('./features/pages/android/*.rb')
            $ENV = ANDROID
        when 'ios'
            load_module('./features/pages/ios/*.rb')
            $ENV = IOS
        end 
    end
    # if ENV['PLATFORM'] == "ANDROID"
    #     # dashboard = DashAndroid.new
    #     load_module('./features/pages/android/*.rb')
    #     $ENV= ANDROID
    # end
    # if ENV['PLATFORM'] == "IOS"
    #     dashboard = DashIos.new
    #     $ENV= IOS
    # end
end

  
After do
    
end