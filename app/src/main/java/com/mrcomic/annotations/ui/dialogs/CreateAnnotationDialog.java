package com.example.mrcomic.annotations.ui.dialogs;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.ViewModelProvider;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.slider.Slider;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.example.mrcomic.annotations.model.Annotation;
import com.example.mrcomic.annotations.types.AnnotationType;
import com.example.mrcomic.annotations.types.AnnotationPriority;
import com.example.mrcomic.annotations.viewmodel.AnnotationViewModel;
import com.example.mrcomic.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Диалог для создания новой аннотации
 */
public class CreateAnnotationDialog extends DialogFragment {
    
    private static final String ARG_COMIC_ID = "comic_id";
    private static final String ARG_PAGE_NUMBER = "page_number";
    
    private AnnotationViewModel viewModel;
    private OnAnnotationCreatedListener listener;
    
    // UI элементы
    private AutoCompleteTextView typeSpinner;
    private TextInputEditText titleEdit;
    private TextInputEditText contentEdit;
    private AutoCompleteTextView categorySpinner;
    private AutoCompleteTextView prioritySpinner;
    private ChipGroup tagsGroup;
    private TextInputEditText tagInput;
    private MaterialButton addTagButton;
    private Slider xSlider;
    private Slider ySlider;
    private MaterialButton createButton;
    private MaterialButton cancelButton;
    
    private String comicId;
    private int pageNumber;
    private List<String> selectedTags = new ArrayList<>();
    
    public static CreateAnnotationDialog newInstance(String comicId, int pageNumber) {
        CreateAnnotationDialog dialog = new CreateAnnotationDialog();
        Bundle args = new Bundle();
        args.putString(ARG_COMIC_ID, comicId);
        args.putInt(ARG_PAGE_NUMBER, pageNumber);
        dialog.setArguments(args);
        return dialog;
    }
    
    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        if (getArguments() != null) {
            comicId = getArguments().getString(ARG_COMIC_ID);
            pageNumber = getArguments().getInt(ARG_PAGE_NUMBER, 1);
        }
    }
    
    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        View view = LayoutInflater.from(getContext())
            .inflate(R.layout.dialog_create_annotation, null);
        
        initViews(view);
        initViewModel();
        setupSpinners();
        setupTagInput();
        setupSliders();
        setupButtons();
        
        return new MaterialAlertDialogBuilder(requireContext())
            .setTitle("Создать аннотацию")
            .setView(view)
            .create();
    }
    
    private void initViews(View view) {
        typeSpinner = view.findViewById(R.id.type_spinner);
        titleEdit = view.findViewById(R.id.title_edit);
        contentEdit = view.findViewById(R.id.content_edit);
        categorySpinner = view.findViewById(R.id.category_spinner);
        prioritySpinner = view.findViewById(R.id.priority_spinner);
        tagsGroup = view.findViewById(R.id.tags_group);
        tagInput = view.findViewById(R.id.tag_input);
        addTagButton = view.findViewById(R.id.add_tag_button);
        xSlider = view.findViewById(R.id.x_slider);
        ySlider = view.findViewById(R.id.y_slider);
        createButton = view.findViewById(R.id.create_button);
        cancelButton = view.findViewById(R.id.cancel_button);
    }
    
    private void initViewModel() {
        viewModel = new ViewModelProvider(requireActivity()).get(AnnotationViewModel.class);
    }
    
    private void setupSpinners() {
        // Настройка спиннера типов
        List<String> types = Arrays.asList(
            "Текстовая заметка",
            "Голосовая заметка", 
            "Выделение",
            "Рисунок",
            "Эмодзи",
            "Вопрос",
            "Закладка"
        );
        
        ArrayAdapter<String> typeAdapter = new ArrayAdapter<>(
            requireContext(), 
            android.R.layout.simple_dropdown_item_1line, 
            types
        );
        typeSpinner.setAdapter(typeAdapter);
        typeSpinner.setText(types.get(0), false);
        
        // Настройка спиннера категорий
        List<String> categories = Arrays.asList(
            "Общее",
            "Персонажи",
            "Сюжет",
            "Диалоги",
            "Визуал",
            "Эмоции",
            "Действие",
            "Локация",
            "Техника"
        );
        
        ArrayAdapter<String> categoryAdapter = new ArrayAdapter<>(
            requireContext(),
            android.R.layout.simple_dropdown_item_1line,
            categories
        );
        categorySpinner.setAdapter(categoryAdapter);
        categorySpinner.setText(categories.get(0), false);
        
        // Настройка спиннера приоритетов
        List<String> priorities = Arrays.asList(
            "Обычный",
            "Низкий",
            "Высокий",
            "Наивысший",
            "Критический"
        );
        
        ArrayAdapter<String> priorityAdapter = new ArrayAdapter<>(
            requireContext(),
            android.R.layout.simple_dropdown_item_1line,
            priorities
        );
        prioritySpinner.setAdapter(priorityAdapter);
        prioritySpinner.setText(priorities.get(0), false);
    }
    
    private void setupTagInput() {
        addTagButton.setOnClickListener(v -> {
            String tag = tagInput.getText().toString().trim();
            if (!tag.isEmpty() && !selectedTags.contains(tag)) {
                addTag(tag);
                tagInput.setText("");
            }
        });
        
        tagInput.setOnEditorActionListener((v, actionId, event) -> {
            if (actionId == android.view.inputmethod.EditorInfo.IME_ACTION_DONE) {
                addTagButton.performClick();
                return true;
            }
            return false;
        });
    }
    
    private void addTag(String tag) {
        selectedTags.add(tag);
        
        Chip chip = new Chip(requireContext());
        chip.setText(tag);
        chip.setCloseIconVisible(true);
        chip.setOnCloseIconClickListener(v -> {
            selectedTags.remove(tag);
            tagsGroup.removeView(chip);
        });
        
        tagsGroup.addView(chip);
    }
    
    private void setupSliders() {
        // Настройка слайдеров для позиции
        xSlider.setValueFrom(0f);
        xSlider.setValueTo(100f);
        xSlider.setValue(50f);
        xSlider.setStepSize(1f);
        
        ySlider.setValueFrom(0f);
        ySlider.setValueTo(100f);
        ySlider.setValue(50f);
        ySlider.setStepSize(1f);
        
        // Добавляем слушатели для отображения текущих значений
        xSlider.addOnChangeListener((slider, value, fromUser) -> {
            // Можно добавить TextView для отображения значения
        });
        
        ySlider.addOnChangeListener((slider, value, fromUser) -> {
            // Можно добавить TextView для отображения значения
        });
    }
    
    private void setupButtons() {
        createButton.setOnClickListener(v -> createAnnotation());
        cancelButton.setOnClickListener(v -> dismiss());
    }
    
    private void createAnnotation() {
        // Валидация
        if (!validateInput()) {
            return;
        }
        
        // Создаем аннотацию
        Annotation annotation = buildAnnotation();
        
        // Сохраняем через ViewModel
        viewModel.createAnnotation(annotation);
        
        // Уведомляем слушателя
        if (listener != null) {
            listener.onAnnotationCreated(annotation);
        }
        
        dismiss();
    }
    
    private boolean validateInput() {
        boolean isValid = true;
        
        // Проверяем заголовок или содержимое
        String title = titleEdit.getText().toString().trim();
        String content = contentEdit.getText().toString().trim();
        
        if (title.isEmpty() && content.isEmpty()) {
            contentEdit.setError("Введите заголовок или содержимое");
            isValid = false;
        }
        
        return isValid;
    }
    
    private Annotation buildAnnotation() {
        // Определяем тип аннотации
        AnnotationType type = getSelectedType();
        
        // Создаем аннотацию
        Annotation annotation = new Annotation(comicId, pageNumber, type);
        
        // Заполняем поля
        String title = titleEdit.getText().toString().trim();
        if (!title.isEmpty()) {
            annotation.setTitle(title);
        }
        
        String content = contentEdit.getText().toString().trim();
        if (!content.isEmpty()) {
            annotation.setContent(content);
        }
        
        // Категория
        String category = categorySpinner.getText().toString();
        annotation.setCategory(category);
        
        // Приоритет
        AnnotationPriority priority = getSelectedPriority();
        annotation.setPriority(priority);
        
        // Теги
        if (!selectedTags.isEmpty()) {
            annotation.setTags(new ArrayList<>(selectedTags));
        }
        
        // Позиция
        annotation.setX(xSlider.getValue());
        annotation.setY(ySlider.getValue());
        
        // Автор (здесь должен быть ID текущего пользователя)
        annotation.setAuthorId("current_user"); // TODO: Получить из настроек
        
        // Цвета по умолчанию
        annotation.setColor("#000000");
        annotation.setBackgroundColor("#FFFF99");
        
        return annotation;
    }
    
    private AnnotationType getSelectedType() {
        String selectedType = typeSpinner.getText().toString();
        
        switch (selectedType) {
            case "Текстовая заметка":
                return AnnotationType.TEXT_NOTE;
            case "Голосовая заметка":
                return AnnotationType.AUDIO_NOTE;
            case "Выделение":
                return AnnotationType.HIGHLIGHT;
            case "Рисунок":
                return AnnotationType.FREEHAND_DRAWING;
            case "Эмодзи":
                return AnnotationType.EMOJI;
            case "Вопрос":
                return AnnotationType.QUESTION;
            case "Закладка":
                return AnnotationType.BOOKMARK;
            default:
                return AnnotationType.TEXT_NOTE;
        }
    }
    
    private AnnotationPriority getSelectedPriority() {
        String selectedPriority = prioritySpinner.getText().toString();
        
        switch (selectedPriority) {
            case "Низкий":
                return AnnotationPriority.LOW;
            case "Высокий":
                return AnnotationPriority.HIGH;
            case "Наивысший":
                return AnnotationPriority.HIGHEST;
            case "Критический":
                return AnnotationPriority.CRITICAL;
            default:
                return AnnotationPriority.NORMAL;
        }
    }
    
    // Интерфейс для уведомления о создании аннотации
    
    public interface OnAnnotationCreatedListener {
        void onAnnotationCreated(Annotation annotation);
    }
    
    public void setOnAnnotationCreatedListener(OnAnnotationCreatedListener listener) {
        this.listener = listener;
    }
}

