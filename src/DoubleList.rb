require_relative "Node"
class DoubleList
    attr_accessor :head, :tail
    def initialize()
      @head = nil
      @tail = nil
      @size = 0
    end
    def add(value)
       newNode = Node.new(value) 
       if @head == nil
            @head = newNode
            @tail = newNode
       else
            @tail.next = newNode
            newNode.previous = @tail
            @tail = newNode
       end      
       return true
    end
    def remove(value)
      aux=@head
      if @head==nil
        return false           
      end
        while aux!=nil         
          if aux.value==value 
            if aux==@head&&@head.next==nil
              @head=nil
              @tail=nil
            elsif aux==@head
              @head=@head.next
              @head.previous=nil
            elsif aux==@tail
              @tail=@tail.previous
              @tail.next=nil
            else
              aux.previous.next=aux.next
              aux.next.previous=aux.previous
            end
            return true  
          end
          aux=aux.next
        end
        false   
    end

    def contains(value)
            if value == nil
                puts "La lista no permite objetos nulos"
                return false            
            else
                auxNode = @head 
                while !auxNode.nil?
                if auxNode.value == value
                    return true                
                else
                    auxNode = auxNode.next
                end
                                    
                end
                return false
            end
    end
    def isEmpty
        if @head==nil
          return true
        end
        false
    end        
end
  
    

listaDoble = DoubleList.new()

listaDoble.add(5)
listaDoble.add(6)
listaDoble.add(8)

puts listaDoble.contains(6)
listaDoble.remove(8)
puts listaDoble.contains(8)

puts listaDoble.head.value
puts listaDoble.tail.value
puts listaDoble.isEmpty