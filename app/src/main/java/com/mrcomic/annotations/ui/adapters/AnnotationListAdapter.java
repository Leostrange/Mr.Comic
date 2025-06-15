package com.example.mrcomic.annotations.ui.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.example.mrcomic.annotations.model.Annotation;
import com.example.mrcomic.annotations.types.AnnotationType;
import com.example.mrcomic.annotations.types.AnnotationPriority;
import com.example.mrcomic.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * Адаптер для отображения списка аннотаций
 */
public class AnnotationListAdapter extends ListAdapter<Annotation, AnnotationListAdapter.AnnotationViewHolder> {
    
    private OnItemClickListener onItemClickListener;
    private OnItemLongClickListener onItemLongClickListener;
    private OnEditClickListener onEditClickListener;
    private OnDeleteClickListener onDeleteClickListener;
    private OnShareClickListener onShareClickListener;
    
    private boolean selectionMode = false;
    private List<Long> selectedItems = new ArrayList<>();
    
    private final SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy HH:mm", Locale.getDefault());
    
    public AnnotationListAdapter() {
        super(new AnnotationDiffCallback());
    }
    
    @NonNull
    @Override
    public AnnotationViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext())
            .inflate(R.layout.item_annotation, parent, false);
        return new AnnotationViewHolder(view);
    }
    
    @Override
    public void onBindViewHolder(@NonNull AnnotationViewHolder holder, int position) {
        Annotation annotation = getItem(position);
        holder.bind(annotation);
    }
    
    public Annotation getAnnotationAt(int position) {
        if (position >= 0 && position < getItemCount()) {
            return getItem(position);
        }
        return null;
    }
    
    public void removeItem(int position) {
        List<Annotation> currentList = new ArrayList<>(getCurrentList());
        if (position >= 0 && position < currentList.size()) {
            currentList.remove(position);
            submitList(currentList);
        }
    }
    
    public void restoreItem(Annotation annotation, int position) {
        List<Annotation> currentList = new ArrayList<>(getCurrentList());
        if (position >= 0 && position <= currentList.size()) {
            currentList.add(position, annotation);
            submitList(currentList);
        }
    }
    
    public void setSelectionMode(boolean selectionMode) {
        this.selectionMode = selectionMode;
        notifyDataSetChanged();
    }
    
    public void setSelectedItems(List<Long> selectedItems) {
        this.selectedItems = selectedItems != null ? new ArrayList<>(selectedItems) : new ArrayList<>();
        notifyDataSetChanged();
    }
    
    // Интерфейсы для обработчиков событий
    
    public interface OnItemClickListener {
        void onItemClick(Annotation annotation);
    }
    
    public interface OnItemLongClickListener {
        boolean onItemLongClick(Annotation annotation);
    }
    
    public interface OnEditClickListener {
        void onEditClick(Annotation annotation);
    }
    
    public interface OnDeleteClickListener {
        void onDeleteClick(Annotation annotation);
    }
    
    public interface OnShareClickListener {
        void onShareClick(Annotation annotation);
    }
    
    // Сеттеры для обработчиков
    
    public void setOnItemClickListener(OnItemClickListener listener) {
        this.onItemClickListener = listener;
    }
    
    public void setOnItemLongClickListener(OnItemLongClickListener listener) {
        this.onItemLongClickListener = listener;
    }
    
    public void setOnEditClickListener(OnEditClickListener listener) {
        this.onEditClickListener = listener;
    }
    
    public void setOnDeleteClickListener(OnDeleteClickListener listener) {
        this.onDeleteClickListener = listener;
    }
    
    public void setOnShareClickListener(OnShareClickListener listener) {
        this.onShareClickListener = listener;
    }
    
    // ViewHolder
    
    class AnnotationViewHolder extends RecyclerView.ViewHolder {
        
        private final MaterialCardView cardView;
        private final ImageView typeIcon;
        private final ImageView priorityIcon;
        private final TextView titleText;
        private final TextView contentText;
        private final TextView authorText;
        private final TextView dateText;
        private final TextView pageText;
        private final ChipGroup tagsGroup;
        private final ImageView editButton;
        private final ImageView deleteButton;
        private final ImageView shareButton;
        private final View selectionOverlay;
        private final ImageView selectionIcon;
        
        public AnnotationViewHolder(@NonNull View itemView) {
            super(itemView);
            
            cardView = itemView.findViewById(R.id.card_view);
            typeIcon = itemView.findViewById(R.id.type_icon);
            priorityIcon = itemView.findViewById(R.id.priority_icon);
            titleText = itemView.findViewById(R.id.title_text);
            contentText = itemView.findViewById(R.id.content_text);
            authorText = itemView.findViewById(R.id.author_text);
            dateText = itemView.findViewById(R.id.date_text);
            pageText = itemView.findViewById(R.id.page_text);
            tagsGroup = itemView.findViewById(R.id.tags_group);
            editButton = itemView.findViewById(R.id.edit_button);
            deleteButton = itemView.findViewById(R.id.delete_button);
            shareButton = itemView.findViewById(R.id.share_button);
            selectionOverlay = itemView.findViewById(R.id.selection_overlay);
            selectionIcon = itemView.findViewById(R.id.selection_icon);
            
            setupClickListeners();
        }
        
        private void setupClickListeners() {
            itemView.setOnClickListener(v -> {
                int position = getAdapterPosition();
                if (position != RecyclerView.NO_POSITION && onItemClickListener != null) {
                    onItemClickListener.onItemClick(getItem(position));
                }
            });
            
            itemView.setOnLongClickListener(v -> {
                int position = getAdapterPosition();
                if (position != RecyclerView.NO_POSITION && onItemLongClickListener != null) {
                    return onItemLongClickListener.onItemLongClick(getItem(position));
                }
                return false;
            });
            
            editButton.setOnClickListener(v -> {
                int position = getAdapterPosition();
                if (position != RecyclerView.NO_POSITION && onEditClickListener != null) {
                    onEditClickListener.onEditClick(getItem(position));
                }
            });
            
            deleteButton.setOnClickListener(v -> {
                int position = getAdapterPosition();
                if (position != RecyclerView.NO_POSITION && onDeleteClickListener != null) {
                    onDeleteClickListener.onDeleteClick(getItem(position));
                }
            });
            
            shareButton.setOnClickListener(v -> {
                int position = getAdapterPosition();
                if (position != RecyclerView.NO_POSITION && onShareClickListener != null) {
                    onShareClickListener.onShareClick(getItem(position));
                }
            });
        }
        
        public void bind(Annotation annotation) {
            // Заголовок
            if (annotation.getTitle() != null && !annotation.getTitle().isEmpty()) {
                titleText.setText(annotation.getTitle());
                titleText.setVisibility(View.VISIBLE);
            } else {
                titleText.setVisibility(View.GONE);
            }
            
            // Содержимое
            if (annotation.getContent() != null && !annotation.getContent().isEmpty()) {
                contentText.setText(annotation.getContent());
                contentText.setVisibility(View.VISIBLE);
            } else {
                contentText.setVisibility(View.GONE);
            }
            
            // Автор
            if (annotation.getAuthorId() != null) {
                authorText.setText("Автор: " + annotation.getAuthorId());
                authorText.setVisibility(View.VISIBLE);
            } else {
                authorText.setVisibility(View.GONE);
            }
            
            // Дата
            dateText.setText(dateFormat.format(annotation.getCreatedAt()));
            
            // Страница
            pageText.setText("Стр. " + annotation.getPageNumber());
            
            // Иконка типа
            setTypeIcon(annotation.getType());
            
            // Иконка приоритета
            setPriorityIcon(annotation.getPriority());
            
            // Теги
            setupTags(annotation.getTags());
            
            // Цвета карточки
            setupCardColors(annotation);
            
            // Режим выбора
            setupSelectionMode(annotation);
            
            // Кнопки действий
            setupActionButtons();
        }
        
        private void setTypeIcon(AnnotationType type) {
            int iconRes;
            switch (type) {
                case TEXT_NOTE:
                    iconRes = R.drawable.ic_text_note;
                    break;
                case AUDIO_NOTE:
                    iconRes = R.drawable.ic_audio_note;
                    break;
                case HIGHLIGHT:
                    iconRes = R.drawable.ic_highlight;
                    break;
                case FREEHAND_DRAWING:
                    iconRes = R.drawable.ic_drawing;
                    break;
                case EMOJI:
                    iconRes = R.drawable.ic_emoji;
                    break;
                case QUESTION:
                    iconRes = R.drawable.ic_question;
                    break;
                case BOOKMARK:
                    iconRes = R.drawable.ic_bookmark;
                    break;
                default:
                    iconRes = R.drawable.ic_annotation;
                    break;
            }
            typeIcon.setImageResource(iconRes);
        }
        
        private void setPriorityIcon(AnnotationPriority priority) {
            int iconRes;
            int tintColor;
            
            switch (priority) {
                case CRITICAL:
                    iconRes = R.drawable.ic_priority_critical;
                    tintColor = android.graphics.Color.parseColor("#D32F2F");
                    break;
                case HIGHEST:
                    iconRes = R.drawable.ic_priority_highest;
                    tintColor = android.graphics.Color.parseColor("#F57C00");
                    break;
                case HIGH:
                    iconRes = R.drawable.ic_priority_high;
                    tintColor = android.graphics.Color.parseColor("#FBC02D");
                    break;
                case NORMAL:
                    iconRes = R.drawable.ic_priority_normal;
                    tintColor = android.graphics.Color.parseColor("#388E3C");
                    break;
                case LOW:
                    iconRes = R.drawable.ic_priority_low;
                    tintColor = android.graphics.Color.parseColor("#1976D2");
                    break;
                case LOWEST:
                    iconRes = R.drawable.ic_priority_lowest;
                    tintColor = android.graphics.Color.parseColor("#7B1FA2");
                    break;
                default:
                    iconRes = R.drawable.ic_priority_normal;
                    tintColor = android.graphics.Color.parseColor("#757575");
                    break;
            }
            
            priorityIcon.setImageResource(iconRes);
            priorityIcon.setColorFilter(tintColor);
        }
        
        private void setupTags(List<String> tags) {
            tagsGroup.removeAllViews();
            
            if (tags != null && !tags.isEmpty()) {
                tagsGroup.setVisibility(View.VISIBLE);
                
                for (String tag : tags) {
                    Chip chip = new Chip(itemView.getContext());
                    chip.setText(tag);
                    chip.setChipBackgroundColorResource(R.color.chip_background);
                    chip.setTextColor(itemView.getContext().getColor(R.color.chip_text));
                    chip.setTextSize(12);
                    chip.setCloseIconVisible(false);
                    chip.setClickable(false);
                    chip.setCheckable(false);
                    
                    tagsGroup.addView(chip);
                }
            } else {
                tagsGroup.setVisibility(View.GONE);
            }
        }
        
        private void setupCardColors(Annotation annotation) {
            // Устанавливаем цвета карточки на основе аннотации
            if (annotation.getBackgroundColor() != null) {
                try {
                    int backgroundColor = android.graphics.Color.parseColor(annotation.getBackgroundColor());
                    cardView.setCardBackgroundColor(backgroundColor);
                } catch (IllegalArgumentException e) {
                    // Используем цвет по умолчанию
                    cardView.setCardBackgroundColor(itemView.getContext().getColor(R.color.surface));
                }
            }
            
            // Устанавливаем цвет границы на основе приоритета
            int strokeColor;
            switch (annotation.getPriority()) {
                case CRITICAL:
                    strokeColor = android.graphics.Color.parseColor("#D32F2F");
                    break;
                case HIGHEST:
                    strokeColor = android.graphics.Color.parseColor("#F57C00");
                    break;
                case HIGH:
                    strokeColor = android.graphics.Color.parseColor("#FBC02D");
                    break;
                default:
                    strokeColor = android.graphics.Color.TRANSPARENT;
                    break;
            }
            
            cardView.setStrokeColor(strokeColor);
            cardView.setStrokeWidth(strokeColor != android.graphics.Color.TRANSPARENT ? 2 : 0);
        }
        
        private void setupSelectionMode(Annotation annotation) {
            boolean isSelected = selectedItems.contains(annotation.getId());
            
            if (selectionMode) {
                selectionOverlay.setVisibility(View.VISIBLE);
                selectionIcon.setVisibility(View.VISIBLE);
                
                if (isSelected) {
                    selectionOverlay.setBackgroundColor(
                        itemView.getContext().getColor(R.color.selection_overlay));
                    selectionIcon.setImageResource(R.drawable.ic_check_circle);
                    selectionIcon.setColorFilter(itemView.getContext().getColor(R.color.primary));
                } else {
                    selectionOverlay.setBackgroundColor(android.graphics.Color.TRANSPARENT);
                    selectionIcon.setImageResource(R.drawable.ic_radio_button_unchecked);
                    selectionIcon.setColorFilter(itemView.getContext().getColor(R.color.outline));
                }
            } else {
                selectionOverlay.setVisibility(View.GONE);
                selectionIcon.setVisibility(View.GONE);
            }
        }
        
        private void setupActionButtons() {
            if (selectionMode) {
                editButton.setVisibility(View.GONE);
                deleteButton.setVisibility(View.GONE);
                shareButton.setVisibility(View.GONE);
            } else {
                editButton.setVisibility(View.VISIBLE);
                deleteButton.setVisibility(View.VISIBLE);
                shareButton.setVisibility(View.VISIBLE);
            }
        }
    }
    
    // DiffUtil callback для эффективного обновления списка
    
    private static class AnnotationDiffCallback extends DiffUtil.ItemCallback<Annotation> {
        
        @Override
        public boolean areItemsTheSame(@NonNull Annotation oldItem, @NonNull Annotation newItem) {
            return oldItem.getId() == newItem.getId();
        }
        
        @Override
        public boolean areContentsTheSame(@NonNull Annotation oldItem, @NonNull Annotation newItem) {
            return oldItem.equals(newItem);
        }
    }
}

