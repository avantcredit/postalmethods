module PostalMethods
  module DocumentProcessor

   def document=(doc)
     unless doc.is_a? File
       doc = open(doc)
     end

     self.to_send = {} if self.to_send.nil?

     self.to_send[:extension] = doc.path.to_s.split('.').last
     self.to_send[:bytes] = File.read(doc)
     self.to_send[:name] = File.basename(doc.path)
     self.to_send[:file_obj] = doc
   end

   def document?
     true unless self.to_send.nil?
   end

   def document
     self.to_send
   end
  end
end
