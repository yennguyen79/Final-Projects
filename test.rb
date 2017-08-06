====================== views/food_items/index -====================
        <td><%= link_to 'Show', section_food_item_path(food_item.section, food_item) %></td>
        <td><%= link_to 'Edit', edit_section_food_item_path(@section, food_item) %></td>
        <td><%= link_to 'Destroy', section_food_item_path(@section, food_item)  , method: :delete, data: { confirm: 'Are you sure?' } %></td>

        <%= link_to 'New Food Item', new_section_food_item_path(@section) %>
====================== views/food_items/show -====================
<ul class="nav nav-pills">
    <% Section.all.each do |section| %>
      <li class="nav-item">
        <%= section.name, 
        class: "nav-link #{'active' if params[:section] == section.name}") %>
      </li>
    <% end %>
  </ul>