module CertificatesHelper
  def formatar_data(start_date, end_date)
    "o dia #{start_date.strftime('%d/%m/%Y')}" if end_date.nil? || start_date == end_date

    "o período de #{start_date.strftime('%d/%m/%Y')} à #{end_date.strftime('%d/%m/%Y')}"
  end
end
