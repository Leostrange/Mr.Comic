package com.example.mrcomic.annotations.ui.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.snackbar.Snackbar;
import com.example.mrcomic.annotations.model.Annotation;
import com.example.mrcomic.annotations.ui.adapters.AnnotationListAdapter;
import com.example.mrcomic.annotations.viewmodel.AnnotationViewModel;
import com.example.mrcomic.R;
import java.util.List;

/**
 * Фрагмент для отображения списка аннотаций
 */
public class AnnotationListFragment extends Fragment {
    
    private static final String ARG_COMIC_ID = "comic_id";
    private static final String ARG_PAGE_NUMBER = "page_number";
    
    private AnnotationViewModel viewModel;
    private RecyclerView recyclerView;
    private SwipeRefreshLayout swipeRefreshLayout;
    private AnnotationListAdapter adapter;
    private View emptyView;
    private View loadingView;
    
    private String comicId;
    private int pageNumber = -1;
    
    public static AnnotationListFragment newInstance(String comicId, int pageNumber) {
        AnnotationListFragment fragment = new AnnotationListFragment();
        Bundle args = new Bundle();
        args.putString(ARG_COMIC_ID, comicId);
        args.putInt(ARG_PAGE_NUMBER, pageNumber);
        fragment.setArguments(args);
        return fragment;
    }
    
    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        if (getArguments() != null) {
            comicId = getArguments().getString(ARG_COMIC_ID);
            pageNumber = getArguments().getInt(ARG_PAGE_NUMBER, -1);
        }
    }
    
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, 
                           @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_annotation_list, container, false);
    }
    
    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        
        initViews(view);
        initViewModel();
        setupRecyclerView();
        setupSwipeRefresh();
        observeViewModel();
    }
    
    private void initViews(View view) {
        recyclerView = view.findViewById(R.id.recycler_view);
        swipeRefreshLayout = view.findViewById(R.id.swipe_refresh_layout);
        emptyView = view.findViewById(R.id.empty_view);
        loadingView = view.findViewById(R.id.loading_view);
    }
    
    private void initViewModel() {
        viewModel = new ViewModelProvider(requireActivity()).get(AnnotationViewModel.class);
    }
    
    private void setupRecyclerView() {
        adapter = new AnnotationListAdapter();
        
        // Обработчики событий адаптера
        adapter.setOnItemClickListener(this::onAnnotationClick);
        adapter.setOnItemLongClickListener(this::onAnnotationLongClick);
        adapter.setOnEditClickListener(this::onEditAnnotation);
        adapter.setOnDeleteClickListener(this::onDeleteAnnotation);
        adapter.setOnShareClickListener(this::onShareAnnotation);
        
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        recyclerView.setAdapter(adapter);
        
        // Настраиваем swipe-to-delete и drag-to-reorder
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new AnnotationItemTouchCallback());
        itemTouchHelper.attachToRecyclerView(recyclerView);
        
        // Добавляем анимации
        recyclerView.setItemAnimator(new androidx.recyclerview.widget.DefaultItemAnimator());
    }
    
    private void setupSwipeRefresh() {
        swipeRefreshLayout.setOnRefreshListener(this::refresh);
        swipeRefreshLayout.setColorSchemeResources(
            R.color.primary,
            R.color.secondary,
            R.color.tertiary
        );
    }
    
    private void observeViewModel() {
        // Наблюдаем за аннотациями
        viewModel.getFilteredAnnotations().observe(getViewLifecycleOwner(), this::updateAnnotations);
        
        // Наблюдаем за состоянием загрузки
        viewModel.getLoadingState().observe(getViewLifecycleOwner(), this::updateLoadingState);
        
        // Наблюдаем за ошибками
        viewModel.getErrorMessage().observe(getViewLifecycleOwner(), this::showError);
        
        // Наблюдаем за статусными сообщениями
        viewModel.getStatusMessage().observe(getViewLifecycleOwner(), this::showStatus);
        
        // Наблюдаем за режимом выбора
        viewModel.getIsSelectionMode().observe(getViewLifecycleOwner(), this::updateSelectionMode);
        
        // Наблюдаем за выбранными элементами
        viewModel.getSelectedAnnotationIds().observe(getViewLifecycleOwner(), this::updateSelection);
    }
    
    private void updateAnnotations(List<Annotation> annotations) {
        if (annotations == null || annotations.isEmpty()) {
            showEmptyView();
        } else {
            showRecyclerView();
            adapter.submitList(annotations);
        }
    }
    
    private void updateLoadingState(Boolean isLoading) {
        if (isLoading != null) {
            if (isLoading) {
                showLoadingView();
            } else {
                swipeRefreshLayout.setRefreshing(false);
                hideLoadingView();
            }
        }
    }
    
    private void updateSelectionMode(Boolean isSelectionMode) {
        if (isSelectionMode != null) {
            adapter.setSelectionMode(isSelectionMode);
        }
    }
    
    private void updateSelection(List<Long> selectedIds) {
        if (selectedIds != null) {
            adapter.setSelectedItems(selectedIds);
        }
    }
    
    private void showEmptyView() {
        recyclerView.setVisibility(View.GONE);
        loadingView.setVisibility(View.GONE);
        emptyView.setVisibility(View.VISIBLE);
    }
    
    private void showRecyclerView() {
        emptyView.setVisibility(View.GONE);
        loadingView.setVisibility(View.GONE);
        recyclerView.setVisibility(View.VISIBLE);
    }
    
    private void showLoadingView() {
        if (adapter.getItemCount() == 0) {
            recyclerView.setVisibility(View.GONE);
            emptyView.setVisibility(View.GONE);
            loadingView.setVisibility(View.VISIBLE);
        }
    }
    
    private void hideLoadingView() {
        loadingView.setVisibility(View.GONE);
    }
    
    private void showError(String error) {
        if (error != null && !error.isEmpty()) {
            Snackbar.make(requireView(), error, Snackbar.LENGTH_LONG)
                .setAction("Повторить", v -> refresh())
                .show();
        }
    }
    
    private void showStatus(String status) {
        if (status != null && !status.isEmpty()) {
            Snackbar.make(requireView(), status, Snackbar.LENGTH_SHORT).show();
        }
    }
    
    // Обработчики событий
    
    private void onAnnotationClick(Annotation annotation) {
        Boolean isSelectionMode = viewModel.getIsSelectionMode().getValue();
        if (isSelectionMode != null && isSelectionMode) {
            viewModel.toggleSelection(annotation.getId());
        } else {
            openAnnotationDetails(annotation);
        }
    }
    
    private boolean onAnnotationLongClick(Annotation annotation) {
        viewModel.toggleSelection(annotation.getId());
        return true;
    }
    
    private void onEditAnnotation(Annotation annotation) {
        // Открываем диалог редактирования
        // TODO: Реализовать EditAnnotationDialog
    }
    
    private void onDeleteAnnotation(Annotation annotation) {
        // Показываем диалог подтверждения
        new androidx.appcompat.app.AlertDialog.Builder(requireContext())
            .setTitle("Удалить аннотацию?")
            .setMessage("Это действие нельзя отменить.")
            .setPositiveButton("Удалить", (dialog, which) -> {
                viewModel.deleteAnnotation(annotation.getId());
            })
            .setNegativeButton("Отмена", null)
            .show();
    }
    
    private void onShareAnnotation(Annotation annotation) {
        // Реализуем функцию поделиться
        android.content.Intent shareIntent = new android.content.Intent(android.content.Intent.ACTION_SEND);
        shareIntent.setType("text/plain");
        shareIntent.putExtra(android.content.Intent.EXTRA_TEXT, 
            annotation.getTitle() + "\n\n" + annotation.getContent());
        shareIntent.putExtra(android.content.Intent.EXTRA_SUBJECT, "Аннотация из Mr.Comic");
        
        startActivity(android.content.Intent.createChooser(shareIntent, "Поделиться аннотацией"));
    }
    
    private void openAnnotationDetails(Annotation annotation) {
        // Открываем детальный просмотр аннотации
        // TODO: Реализовать AnnotationDetailActivity
    }
    
    public void refresh() {
        // Обновляем данные
        // ViewModel автоматически обновит LiveData
    }
    
    // Класс для обработки swipe и drag жестов
    private class AnnotationItemTouchCallback extends ItemTouchHelper.SimpleCallback {
        
        public AnnotationItemTouchCallback() {
            super(0, ItemTouchHelper.LEFT | ItemTouchHelper.RIGHT);
        }
        
        @Override
        public boolean onMove(@NonNull RecyclerView recyclerView, 
                            @NonNull RecyclerView.ViewHolder viewHolder, 
                            @NonNull RecyclerView.ViewHolder target) {
            return false; // Не поддерживаем перетаскивание
        }
        
        @Override
        public void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int direction) {
            int position = viewHolder.getAdapterPosition();
            Annotation annotation = adapter.getAnnotationAt(position);
            
            if (annotation != null) {
                if (direction == ItemTouchHelper.LEFT) {
                    // Swipe влево - удаление
                    deleteAnnotationWithUndo(annotation, position);
                } else if (direction == ItemTouchHelper.RIGHT) {
                    // Swipe вправо - архивирование
                    archiveAnnotationWithUndo(annotation, position);
                }
            }
        }
        
        @Override
        public void onChildDraw(@NonNull android.graphics.Canvas c, 
                              @NonNull RecyclerView recyclerView, 
                              @NonNull RecyclerView.ViewHolder viewHolder, 
                              float dX, float dY, int actionState, boolean isCurrentlyActive) {
            
            // Рисуем фон для swipe действий
            if (actionState == ItemTouchHelper.ACTION_STATE_SWIPE) {
                View itemView = viewHolder.itemView;
                android.graphics.Paint paint = new android.graphics.Paint();
                
                if (dX > 0) {
                    // Swipe вправо - архивирование (зеленый фон)
                    paint.setColor(android.graphics.Color.parseColor("#4CAF50"));
                    c.drawRect(itemView.getLeft(), itemView.getTop(), 
                              itemView.getLeft() + dX, itemView.getBottom(), paint);
                    
                    // Рисуем иконку архива
                    // TODO: Добавить иконку
                } else if (dX < 0) {
                    // Swipe влево - удаление (красный фон)
                    paint.setColor(android.graphics.Color.parseColor("#F44336"));
                    c.drawRect(itemView.getRight() + dX, itemView.getTop(), 
                              itemView.getRight(), itemView.getBottom(), paint);
                    
                    // Рисуем иконку удаления
                    // TODO: Добавить иконку
                }
            }
            
            super.onChildDraw(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
        }
    }
    
    private void deleteAnnotationWithUndo(Annotation annotation, int position) {
        // Временно удаляем из адаптера
        adapter.removeItem(position);
        
        // Показываем Snackbar с возможностью отмены
        Snackbar.make(requireView(), "Аннотация удалена", Snackbar.LENGTH_LONG)
            .setAction("Отменить", v -> {
                // Восстанавливаем элемент
                adapter.restoreItem(annotation, position);
            })
            .addCallback(new Snackbar.Callback() {
                @Override
                public void onDismissed(Snackbar transientBottomBar, int event) {
                    if (event != DISMISS_EVENT_ACTION) {
                        // Если не нажали "Отменить", удаляем окончательно
                        viewModel.deleteAnnotation(annotation.getId());
                    }
                }
            })
            .show();
    }
    
    private void archiveAnnotationWithUndo(Annotation annotation, int position) {
        // Временно удаляем из адаптера
        adapter.removeItem(position);
        
        // Показываем Snackbar с возможностью отмены
        Snackbar.make(requireView(), "Аннотация архивирована", Snackbar.LENGTH_LONG)
            .setAction("Отменить", v -> {
                // Восстанавливаем элемент
                adapter.restoreItem(annotation, position);
            })
            .addCallback(new Snackbar.Callback() {
                @Override
                public void onDismissed(Snackbar transientBottomBar, int event) {
                    if (event != DISMISS_EVENT_ACTION) {
                        // Если не нажали "Отменить", архивируем окончательно
                        viewModel.archiveAnnotation(annotation.getId());
                    }
                }
            })
            .show();
    }
}

