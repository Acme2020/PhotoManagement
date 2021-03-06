module BreadcrumbsHelper
    def breadcrumbs

        if params[:id] || params[:folder_id]

            params[:folder_id] ? @current_folder = Folder.find(params[:folder_id]) : @current_folder = Folder.find(params[:id])
            
                if @current_folder
                    @folders = @current_folder.children 
                    render 'breadcrumbs'
                end
        else

            @current_folder = nil
            render 'breadcrumbs'

        end

    end

end