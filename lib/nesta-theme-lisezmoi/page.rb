module Nesta
  class Page < FileModel
    def previous_page
      return nil if start_page? || tour_position <= 1
      tour_pages[tour_position - 1]
    end

    def next_page
      return pages.first if start_page?
      tour_pages[tour_position + 1]
    end

    def tour_position
      @tour_postition ||= tour_pages.index(self)
    end

    def tour_pages
      @tour_pages ||= tour_category.pages || []
    end

    def tour_length
      @tour_length ||= tour_pages.size
    end

    def tour_category
      @tour_category ||= categories.first
    end

    def start_page?
      pages.size > 0
    end

  end
end
