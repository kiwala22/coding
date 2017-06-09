class Application < ApplicationRecord
	require 'pdfkit'
	config.middleware.use PDFKit::Middleware
end
