module LinksHelper
  ALERT = "<div class='alert alert-TYPE alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><p>NOTICE</p></div>"

  def print_flash_notice
    tmp = flash[:notice].split('#')
    prefix = tmp[0]
    notice = tmp[1]

    return ALERT.gsub(/TYPE/, "success").gsub(/NOTICE/, notice) if prefix.eql? 'SUCCESS'
    return ALERT.gsub(/TYPE/, "error").gsub(/NOTICE/, notice) if prefix.eql? 'ERROR'
    return ALERT.gsub(/TYPE/, "info").gsub(/NOTICE/, notice) if prefix.eql? 'INFO'
  end
end
