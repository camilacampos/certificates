module CertificatesHelper
  def formatar_data(start_date, end_date)
    return "no dia #{start_date.strftime('%d/%m/%Y')}" if end_date.nil? || start_date == end_date

    "entre os dias #{start_date.strftime('%d/%m/%Y')} e #{end_date.strftime('%d/%m/%Y')}"
  end
end
